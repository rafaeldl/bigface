require 'rest_client'

module Utils
  module Weather
    def self.info(lat, lon)
      RestClient.get 'http://api.openweathermap.org/data/2.5/weather', params: {lat: lat, lon: lon, units: :metric}
    end
  end
end