class UsersController < ApplicationController
  before_action :require_user_logged_in, only: [:show, :likes]
  
  def show
    @user = User.find(params[:id])
    @searches = @user.searches.order(id: :desc)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:success] = 'ユーザを登録しました。'
      redirect_to @user
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end
  
  def likes
    @user = User.find(params[:id])
    @likes = @user.likes
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
  def admin_user
      redirect_to(root_url) unless current_user.admin?
  end
end