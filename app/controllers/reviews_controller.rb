# require 'pry'

class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :set_book, except: [:index, :show]

  def index
    @reviews = Review.all.order("created_at DESC")
    render 'reviews/index', :layout => false
  end

  def new
    @review = Review.new
  end

  def show
    @review = Review.find(params[:id])
    respond_to do |f|
      f.html { render :show }
      f.json { render json: @review, adapter: :json }
    end
  end

  def edit
  end

  def create
    # binding.pry
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.book_id = @book.id

    if @review.save
      respond_to do |f|
        f.html {redirect_to @book}
        f.js

      end
    else
      render 'new'
    end
  end

  def update
    @review.update(review_params)
  end

  def destroy
    @review.destroy
    redirect_to root_path
  end

  private

    def set_review
      @review = Review.find(params[:id])
    end

    def set_book
      @book = Book.find(params[:book_id])
    end

    def review_params
      params.require(:review).permit(:rating, :comment)
    end

end