class FruitsController < ApplicationController
  def new
  end

  def create
    fruit = Fruit.new

    fruit.name = params[:name]
    fruit.description = params[:description]
    fruit.save
    redirect_to '/'
  end
end