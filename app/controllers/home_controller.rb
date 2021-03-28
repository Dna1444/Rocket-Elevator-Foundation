require 'ElevatorMedia'
class HomeController < ApplicationController

  
  def index
    @media = ElevatorMedia::Streamer.getContent("Scorpio")
  end
end
