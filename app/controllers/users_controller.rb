class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    # debugger
    # uses byebug gem, press Ctrl-D to step forward, acts as console /w breakpoints
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Rails Sample App!"
      redirect_to @user
      # can also be writted as
      # redirect_to user_url(@user)
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)

    else
      render 'edit'
    end
  end

    private
      def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
      end
end
