class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index]


  def index
    @users = User.all.order("created_at DESC")
  end

  def show
    @user = User.find(params[:id])
    @reviews = Review.where(user_id: @user.id).order("created_at DESC")
    # render :json => @reviews
  end

end

# devise class helper methods
# Generated methods:
#   authenticate_user!  # Signs user in or redirect
#   authenticate_admin! # Signs admin in or redirect
#   user_signed_in?     # Checks whether there is a user signed in or not
#   admin_signed_in?    # Checks whether there is an admin signed in or not
#   current_user        # Current signed in user
#   current_admin       # Current signed in admin
#   user_session        # Session data available only to the user scope
#   admin_session       # Session data available only to the admin scope

# Use:
#   before_action :authenticate_user!  # Tell devise to use :user map
#   before_action :authenticate_admin! # Tell devise to use :admin map