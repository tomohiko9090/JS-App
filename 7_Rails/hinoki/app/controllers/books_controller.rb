class BooksController < ApplicationController
  before_action :require_logged_in
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  before_action :corrent_user, only: [:edit, :update, :destroy]
  def index
    @books = Book.all
  end

  def show
  end

  def new
    @book = Book.new
  end

  def create
    @book = current_user.books.build(book_params)
    if @book.save
      flash[:success] = "登録できたんご"
      redirect_to @book
    else
      flash.now[:danger] = "登録できんかったわ"
      render :new
    end
  end

  def edit
  end

  def update
    if @book.update(book_params)
      flash[:success] = "更新できたんご"
      redirect_to @book
    else
      flash.now[:danger] = "更新できんかったわ"
      render :edit
    end
  end

  def destroy
    @book.destroy
    flash[:success] = "削除したぞ"
    redirect_to root_path
  end

  private
  def book_params
    params.require(:book).permit(:title, :auther, :publisher, :review)
  end

  def correct_user
    unless @book.user_id == current_user.id
      redirect_to root_path
    end
  end
end
