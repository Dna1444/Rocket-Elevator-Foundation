require 'rails_helper'
require "./app/controllers/interventions_controller.rb"

describe "Testing intervention", type: :controller do
    interventions = Interventions.new()
    interventions.author = 3
    interventions.customers_id = 5
    interventions.building_id = 2
    interventions.batteries_id = nil
    interventions.columns_id = 30
    interventions.elevators_id = nil
    interventions.employees_id = nil
    interventions.Result = "Incomplete"
    interventions.Report = nil
    interventions.Status = "Pending"

    context "test to see if intervetnion a intervention" do
        it "check to see if it in the form intervention" do
            expect(interventions).to be_a(Interventions)
        end
    end

    context "test to see if intervetnion default status Pending" do
        it "check the status" do
            expect(interventions.Status).to eq('Pending')
        end
    end
    
    context "test to see if intervetnion default result is incomplete" do
        it "check the result" do
            expect(interventions.Result).to eq('Incomplete')
        end
    end
    
end

