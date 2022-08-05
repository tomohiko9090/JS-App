class LikesController < ApplicationController
  def index
    @books = current_user.like_books
  end

  def create
    if current_user.like(params[:book_id])
      flash[:success] = "お気に入り登録しました"
    end
    redirect_back(fallback_location: root_path)
  end

  def destroy
    if current_user.unlike(params[:book_id])
      flash[:success] = "お気に入りを解除しました"
    end
    redirect_back(fallback_location: root_path)
  end
end
