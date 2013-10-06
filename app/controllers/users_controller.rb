class UsersController < ApplicationController

  def create
    @user = User.new(params[:user])
    redirect_to @user if @user.save
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end
end