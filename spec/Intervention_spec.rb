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

    context "best case normal intervention form checking if valid" do
        it "checking if intervention is valide befor changing stuff" do

            expect(interventions).to be_valid
        end
    end

    context "testing that author need to be present for intervention to be valid" do
        it "changing author to nil to test validation" do
            interventions.author = nil
            expect(interventions).not_to be_valid
        end
    end
    context "testing that customer_id needs to be there for validation" do
        it "shouldnt be valide without customer_id" do
            interventions.customers_id = nil
            expect(interventions).not_to be_valid
        end
    end


    context "test to see if hello is a valid status" do
        it "set satus to hello and check if it valid" do
            interventions.Status = "hello"
            expect(interventions).not_to be_valid
        end
    end
    
    context "test to see if intervetnion will accept not complet as a result" do
        it "si if intervention is valide wihtout the right Result" do
            interventions.Result = "not complet"
            expect(interventions).not_to be_valid
        end
    end
    
end

