class WelcomeController < ApplicationController
  def index
    @fruits = Fruits.all
  end
end