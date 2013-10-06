class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "You are signed up!" 
    else
      render :new, alert: 'Try again please'
    end
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end


  private
    def user_params
      params.require(:user).permit(:name, :email, :password,
            :password_confirmation, :created_at, :updated_at)
    end

end