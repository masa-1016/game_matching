class RoomListsController < ApplicationController
  def index
    @rooms = Room.all.order(id: "DESC")
  end
end
