class UsersController < ApplicationController
  before_action :require_logged_in, only: [:show] #showアクションの前に、require_logged_inアクションを実行
  before_action :already_logged_in, only: [:new, :create]

  def show
    @user = current_user
    @books = current_user.books.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    p user_params
    if @user.save 
      session[:user_id] = @user.id
      flash[:success] = "登録したよん🎉ログインしよっさ！"
      redirect_to root_path
      p @user.password
      p @user.password_confirmation
    else
      flash[:danger] = "ざんねん。\n登録できんかったわ🙅‍♂️"
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
