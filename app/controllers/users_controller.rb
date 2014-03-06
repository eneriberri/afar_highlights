class UsersController < ApplicationController
  def index
    @users = User.includes(:highlights).all
    render :index
  end
  
  def show
    @user = User.includes(:highlights).find(params[:id])
    render :show
  end
end
