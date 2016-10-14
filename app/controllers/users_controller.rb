class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index]


  def index
    @users = User.all.order("created_at DESC")
  end

  def show
    @user = User.find(params[:id])
    @reviews = Review.where(user_id: @user.id).order("created_at DESC")
  end

end