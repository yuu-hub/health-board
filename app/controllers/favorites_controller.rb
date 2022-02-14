class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    search = Search.find(params[:search_id])
    current_user.like(search)
    flash[:success] = 'お気に入り登録しました。'
    redirect_to search
  end

  def destroy
    search = Search.find(params[:search_id])
    current_user.unlike(search)
    flash[:success] = 'お気に入り解除しました。'
    redirect_to search
  end
end
