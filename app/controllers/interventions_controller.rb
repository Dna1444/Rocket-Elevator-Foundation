class InterventionsController < ApplicationController
    require 'zendesk_api'

    #getting my building from the customer id
    def get_building_by_customer
        @building = Building.where(customer_id: params[:customer_id])
            respond_to do |format| 
            format.json { render :json => @building }
        end
        
    end 
    #getting my batterie from the building id
    def get_batterie_by_building
        @battery = Battery.where(building_id: params[:building_id])
            respond_to do |format| 
            format.json { render :json => @battery }
        end
        
    end 

    #getting my column from the batterie id
    def get_column_by_batterie
        @column = Column.where(battery_id: params[:batterie_id])
        puts @column
            respond_to do |format| 
            format.json { render :json => @column }
        end
       
        
    end 


    #getting my elevators from the column id
    def get_elevator_by_column
        @elevator = Elevator.where(column_id: params[:column_id])
            respond_to do |format| 
            format.json { render :json => @elevator }
        end
        
    end 


    def create
        puts "create getting called"
        employee = Employee.find_by(user_id: current_user.id)
        puts employee.id
        @interventions = Interventions.new()
        @interventions.author = employee.id
        @interventions.customers_id = params[:Customer]
        @interventions.building_id = params[:Building]
        @interventions.batteries_id = params[:Battery] unless params[:Column] != nil
        @interventions.columns_id = params[:Column] unless params[:Elevator] != nil
        @interventions.elevators_id = params[:Elevator]
        @interventions.employees_id = params[:Employee]
        @interventions.Result = "Incomplete"
        @interventions.Report = params[:Report]
        @interventions.Status = "Pending"
        

        if @interventions.save!
            redirect_to main_app.root_path, notice: "Intervention send!"
        end
        client = ZendeskAPI::Client.new do |config|
            config.url = ENV["ZENDESK_URL"]
            config.username = ENV["ZENDESK_EMAIL"]
            config.token = ENV["ZENDESK_TOKEN"]
        end

        @customer = Customer.find_by(id: @interventions.customers_id)
        ZendeskAPI::Ticket.create!(client,
        :subject => "Intervention from #{employee.first_name}",
        :comment => {
            :value => "A intervention was requested by #{@customer.company_name} from the building #{@interventions.building_id} for the following Battery: #{params[:Battery]}, Column: #{params[:Column]}, Elevator: #{@interventions.elevators_id}. The employee assigned to the task is: #{@interventions.employees_id}.
            The follow is a discription of the report: 
            #{@interventions.Report}"
        },
        :requester => { 
            "name": employee.info, 
            "email": employee.email 
        },
        :priority => "normal",
        :type => "problem"
        )
        
        
        
    end

    private

    # def interventions_params
    #     params.require(:interventions).permit(:full_name, :email, :phone, :company_name, :project_name, :department, :project_description,
    #     :message, :file_attachment, :file, :image)
    #   end
  
  end