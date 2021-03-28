
module ElevatorMedia
    require 'uri'
    require 'net/http'
    require 'openssl'
    require 'json'

    class Streamer
        def self.getContent(input)
            require 'uri'
            require 'net/http'
            require 'openssl'

            url = URI("https://sameer-kumar-aztro-v1.p.rapidapi.com/?sign=#{input}&day=today")

            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE

            request = Net::HTTP::Post.new(url)
            request["x-rapidapi-key"] = '0833fad74bmshb8cbefad3a08594p14413ajsn9ad9a0051c11'
            request["x-rapidapi-host"] = 'sameer-kumar-aztro-v1.p.rapidapi.com'

            response = http.request(request)
            puts response.read_body
            response.read_body
        end
        
    end
end