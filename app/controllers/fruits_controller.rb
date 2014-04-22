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

  def edit
    @fruit_id = params[:id]
  end

  def update
    fruit = Fruit.find(params[:id])
    fruit.update(:name => params[:name])
    redirect_to '/'
  end
end