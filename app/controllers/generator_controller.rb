class GeneratorController < ApplicationController
  # Calling the password generator gem
  def generate
    require 'rubygems'
    require 'random_password_generator'
    
    @randoPassword = RandomPasswordGenerator.generate(24)
    @output = @randoPassword
  end
end