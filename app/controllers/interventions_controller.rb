class InterventionsController < ApplicationController

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
        @interventions.Start_of_the_intervention = nil
        @interventions.End_of_the_intervention = nil
        @interventions.Result = "Incomplete"
        @interventions.Report = params[:Report]
        @interventions.Status = "Pending"
        

        if @interventions.save!
            redirect_back fallback_location: root_path, notice: "Success"
        end
        
        
        
    end

    private

    # def interventions_params
    #     params.require(:interventions).permit(:full_name, :email, :phone, :company_name, :project_name, :department, :project_description,
    #     :message, :file_attachment, :file, :image)
    #   end
  
  end