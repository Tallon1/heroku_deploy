class GeneratorController < ApplicationController
  # Calling the password generator gem
  def generate
    require 'rubygems'
    require 'sporadic_password_generator'
    
    @randoPassword = SporadicPasswordGenerator.generate(24)
    @output = @randoPassword
  end
end