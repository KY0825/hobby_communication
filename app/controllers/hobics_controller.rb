class HobicsController < ApplicationController
  def index
    @groups = Group.all
    @rooms = Room.all
  end
end