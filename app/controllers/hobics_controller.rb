class HobicsController < ApplicationController
  def index
    @groups = Group.includes(:user)
    @rooms = Room.includes(:user)
  end
end