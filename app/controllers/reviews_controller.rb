# require 'pry'

class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :set_book, except: [:index, :show]

  def index
    # binding.pry
    if !!params[:user_id]
      @reviews = Review.all.where("user_id = ?", params[:user_id])
    else
      @reviews = Review.all.order("created_at DESC")
    end

    render json: @reviews
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
      response = {review: @review, created_at: @review.time_in_words, username: @review.user.name }
      respond_to do |f|
        f.html {redirect_to @book}
        f.json { render json: response, adapter: :json }

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