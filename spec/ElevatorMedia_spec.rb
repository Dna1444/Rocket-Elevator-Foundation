require 'ElevatorMedia'

describe ElevatorMedia::Streamer do
    describe ".getContent" do

        # first test to check if without input i wouldnt have a string
        # context "test for a string" do
        #     it "return a string" do
        #         expect(ElevatorMedia::Streamer.getContent(nil)).not_to be_instance_of(String)
        #     end
        # end

        context "test for a string with a input" do
            it "return a string" do
                expect(ElevatorMedia::Streamer.getContent("Scorpio")).to be_instance_of(String)
            end
        end

        context "checking for a dev in the string" do
            it "return a string with a div" do
                expect(ElevatorMedia::Streamer.getContent("Scorpio")).to include("div")
            end
        end
    end
end


