class CastlesController < ApplicationController

  before_action :set_castle, only: [:show, :edit, :update, :destroy];
  
  def index
    @castles = Castle.geocoded
    @markers = @castles.map do |castle|
      {
        lat: castle.latitude,
        lng: castle.longitude
      }
    end
  end

  def show
    @castle
  end
  
  def new
    @castle = Castle.new
  end

  def create
    @castle = Castle.new(castle_params)
    if @castle.save
      flash[:success] = "Castle successfully created"
      redirect_to @castle
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def edit
    @castle
  end
  
  def update
      if @castle.update_attributes(castle_params)
        flash[:success] = "Castle was successfully updated"
        redirect_to @castle
      else
        flash[:error] = "Something went wrong"
        render 'edit'
      end
  end
  
  def destroy
    if @castle.destroy
      flash[:success] = 'Castle was successfully deleted.'
      redirect_to castles_url
    else
      flash[:error] = 'Something went wrong'
      redirect_to castles_url
    end
  end
  
  private

  def set_castle
    @castle = Castle.find(params[:id])
  end

  def castle_params
    params.require(:castle).permit(:img,:name,:price,:details,:city,:address)
  end 

end