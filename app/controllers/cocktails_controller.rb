class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.all
  end

  def show
      @cocktails = Cocktail.find(params[:id])
  end

  def new
    @cocktails = Cocktail.new
  end

  def create
  end

  private

  def params

  end

end
