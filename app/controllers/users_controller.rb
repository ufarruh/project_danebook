class UsersController < ApplicationController
  #skip_before_action :require_login, only: [:show, :index, ]

  def new
    @user = User.new
  end

  def show

  end

  def create
    @user = User.new(whitelisted_params)

    if @user.save
      sign_in(@user)
      flash[:succes] = "Created new user!"
      redirect_to @user
    else
      flash.now[:error] = "Failed to Create User!"
      render :new
    end
  end

  def index

  end

  private

  def whitelisted_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
