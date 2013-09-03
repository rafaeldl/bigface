require 'utils/weather'

class Event < ActiveRecord::Base
  belongs_to :partner

  before_save :update_weather

  private

  def update_weather
    weather = Utils::Weather.info(self.lat, self.lon)
    forecast = JSON.parse weather
    self.temp = forecast['main']['temp']
    puts forecast
  end

end
