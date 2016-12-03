class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :set_book, except: [:index, :show]

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def show
  end

  def edit
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    @review.book_id = @book.id

    if @review.save
      respond_to do |format|
        format.html {redirect_to @book}
        format.js
      end
    else
      respond_to do |format|
        format.html {render 'new'}
        format.js
      end
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