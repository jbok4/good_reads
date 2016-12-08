class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index]


  def index
    @users = User.all#.order("created_at DESC")
  end

  def show
    @user = User.find(params[:id])
    # @reviews = @user.reviews.order....
    @reviews = Review.where(user_id: @user.id).order("created_at DESC")
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @user, adapter: :json}
    end
  end

  def destroy
    @user.delete
  end

end