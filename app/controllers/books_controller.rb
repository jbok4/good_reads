class BooksController < ApplicationController
  before_action :set_book, except: [:index, :new, :create, :favorite]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @books = Book.all.order("created_at DESC")

  end

  def show
    @reviews = Review.where(book_id: @book.id).order("created_at DESC")

    if @reviews.blank?
      @avg_review = 0
    else
      @avg_review = @reviews.average(:rating).round(2)
    end
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @book}
    end
  end

  def new
    @book = current_user.books.build
    @book.reviews.build
  end

  def edit
  end

  def favorite
    @books = Book.random
  end

  def create
    @book = current_user.books.build(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: 'Book was successfully destroyed.' }
      format.json { head :no_content }
    end
  end




  private

   def set_book
       @book = Book.find(params[:id])
   end

    def book_params
      params.require(:book).permit(:title, :description, :author, :pages, :published, :image, reviews_attributes: [:rating, :comment])
    end
end
