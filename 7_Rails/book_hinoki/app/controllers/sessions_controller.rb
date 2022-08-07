class SessionsController < ApplicationController
  before_action :require_logged_in, only: [:destroy]
  before_action :already_logged_in, only: [:new, :create]

  def new
  end

  def create
    email = params[:session][:email].downcase 
    password = params[:session][:password] 
    if login(email, password)
      flash[:success] = "ログイン成功じゃけ"
      redirect_to root_path
    else
      flash.now[:danger] = "それじゃーログインできんねんな"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "ログアウト。またおいでやす〜"
    redirect_to login_url
  end

  private
  def login(email, password)
    @user = User.find_by(email: email)
    if @user && @user.authenticate(password)
      session[:user_id] = @user.id
      return true
    else
      return false
    end
  end

end
