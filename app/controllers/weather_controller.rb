class WeatherController < ApplicationController
  def _weather
    require 'net/http'
    require 'json'

    @url = 'https://api.openweathermap.org/data/2.5/weather?q=London&appid={018f010a6f5c869280fd4b4bc565bcd6}'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @output = JSON.parse(@response)
  end
end