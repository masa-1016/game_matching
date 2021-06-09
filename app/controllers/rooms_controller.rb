class RoomsController < ApplicationController

  # def index
  #   @rooms = Room.all.order(id: "DESC")
  # end

  def show
    # @rooms = Room.all.order(id: "DESC")
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    room = Room.find(params[:id])
    room.destroy
    redirect_to root_path
  end

  private

  def room_params
    params.require(:room).permit(:name, :game_id, :platform_id, user_ids: [])
  end

end
