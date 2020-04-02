class SeasController < ApplicationController
  #define your controller actions here
  
  def welcome
    render :welcome
  end

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
    @sea = Sea.new
  end

  def show
    @sea = Sea.find(params[:id])
  end

  def update
    @sea = Sea.find(params[:id])
    @sea.update(sea_params)
    redirect_to "/seas/#{@sea.id}"
  end

  def destroy
    @sea = Sea.destroy(params[:id])
    redirect_to "/seas"
    # @sea.delete
  end



  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end
  

end
