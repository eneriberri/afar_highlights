class UsersController < ApplicationController
  def show
    @user = User.includes(:highlights).find(params[:id])
    render :show
  end
end
