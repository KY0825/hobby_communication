class GruopsController < ApplicationController

  def new
    @group = Group.new
  end

  def index
    @group = Group.includes(:user)
  end
end