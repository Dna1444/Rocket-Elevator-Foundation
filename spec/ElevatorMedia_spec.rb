require 'ElevatorMedia'

describe ElevatorMedia::Streamer do
    describe ".getContent" do
        context "test for a string" do
            it "return a string" do
                expect(ElevatorMedia::Streamer.getContent(nil)).to be_instance_of(String)
            end
        end
        context "test for a string with a input" do
            it "return a string" do
                expect(ElevatorMedia::Streamer.getContent("Scorpio")).to be_instance_of(String)
            end
        end
    end
end


