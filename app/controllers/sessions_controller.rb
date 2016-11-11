class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by_email(params[:email])

    if @user && @user.authenticate(params[:password])
      sign_in(@user)
      flash[:success] = "You've signed in"
      redirect_to @user
    else
      flash.now[:error] = "We couldn't sign you in"
      render :new
    end
  end

  def destroy
    sign_out
    flash[:success] = "You've signed out"
    redirect_to root_url
  end

end
