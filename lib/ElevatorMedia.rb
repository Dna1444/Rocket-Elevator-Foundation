
module ElevatorMedia
    require 'uri'
    require 'net/http'
    require 'openssl'
    require 'json'
    require 'rails_helper'

    class Streamer
        def self.getContent(input)
            

            url = URI("https://sameer-kumar-aztro-v1.p.rapidapi.com/?sign=#{input}&day=today")

            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE

            request = Net::HTTP::Post.new(url)
            request["x-rapidapi-key"] = ENV['aztroApi']
            request["x-rapidapi-host"] = 'sameer-kumar-aztro-v1.p.rapidapi.com'


            response = http.request(request)
            puts JSON.parse(response.read_body)['description']
            pp response
            # response.read_body
            description = JSON.parse(response.read_body)['description']

            
            "<div class = 'text-center'><h3>your aztro</h3><p id = 'aztro'>#{description}</p></div>"
            
        end
        
    end
end