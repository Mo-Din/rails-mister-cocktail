class ApplicationController < ActionController::Base

  before_action :cocktail_param, only: [:show, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
    @cocktails = Cocktail.new
  end

  def create
    @cocktails = Cocktail.create(cocktail_param)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktails = Cocktail.destroy
  end

  private

  def cocktail_param
    @cocktails = Cocktail.find(params[:id])
  end
end
