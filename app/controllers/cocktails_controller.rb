class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i(show)
  # %i(show destroy) == [:show, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
    # @cocktail is retreived by the set_cocktail
    @doses = @cocktail.doses
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    # If cocktail is created, save it and send it to the new cocktail page; Else (when blank), reload the page.
    if @cocktail.save
      redirect_to cocktail_path
    else
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
