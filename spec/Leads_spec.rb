require 'rails_helper'
require "./app/controllers/leads_controller.rb"

describe "Testing Leads", type: :controller do
    lead = Lead.new()
    lead.full_name = "Dana Duquette"
    lead.email = "d_duquette@outlook.com"
    lead.phone = "514-911-3300"
    lead.company_name = "Google"
    lead.project_name = "world domination"
    lead.department = "sale"
    lead.project_description = "need elevators to take over the world"
    lead.message = "would like realy fast elevator to transporte equipement to the troups"


    context "test to see if leads a is a leads form" do
        it "check to see if it in the form leads" do
            expect(lead).to be_a(Lead)
        end
    end

    context "test to see if lead was a full name" do
        it "check the full name" do
            expect(lead.full_name).to be_instance_of(String)
        end
    end
    
    context "test to see if lead department is sales" do
        it "check the department" do
            expect(lead.department).to be_instance_of(String)
        end
    end
    
end

