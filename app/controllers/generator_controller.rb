class GeneratorController < ApplicationController
  def generate
    require 'rubygems'
    require 'random_password_generator'

    @randoPassword = RandomPasswordGenerator.generate(10)
    @output = @randoPassword
  end
end