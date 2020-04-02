class SeasController < ApplicationController
  #define your controller actions here

  def index
    @seas = Sea.all
  end

  def edit
    @sea = Sea.find(params[:id])
  end

  def create
    @sea = Sea.create(sea_params)
    redirect_to @sea
  end

  def new
    # @sea = Sea.new(sea_params)
    # @sea = Sea.create
    # render 'new.html'

  end

  def show
    @sea = Sea.find(params[:id])
  end

  def welcome

  end



  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end
  

end
