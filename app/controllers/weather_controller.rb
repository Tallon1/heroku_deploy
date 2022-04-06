class WeatherController < ApplicationController
  def _weather
    require 'net/http'
    require 'json'

    @url = 'https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid={eaba5d9217ba48d7e53f33d4125361f5}'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @output = JSON.parse(@response)
  end
end