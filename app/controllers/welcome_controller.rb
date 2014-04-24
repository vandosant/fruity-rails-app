class WelcomeController < ApplicationController
  def index
    @fruits = Fruit.all
    @bands = Band.all
  end
end