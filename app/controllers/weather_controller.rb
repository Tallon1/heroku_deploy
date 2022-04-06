class WeatherController < ApplicationController
  def _weather
    require 'net/http'
    require 'json'

    @url = 'http://api.openweathermap.org/geo/1.0/direct?q=Dublin&limit=5&appid={018f010a6f5c869280fd4b4bc565bcd6}'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @output = JSON.parse(@response)
  end
end