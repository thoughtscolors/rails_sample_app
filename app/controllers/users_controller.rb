class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    # debugger
    # uses byebug gem, press Ctrl-D to step forward, acts as console /w breakpoints
  end
end
