class SearchesController < ApplicationController
  before_action :set_search, only: [:show, :edit, :update, :destroy]
  before_action :require_user_logged_in, only: [:new, :create, :edit, :update, :destroy]
  
  def index
    @searches = Search.all
  end
  
  def show
  end

  def new
    @search = Search.new
  end

  def create
    @search = Search.new(search_params)
    
    if @search.save 
      flash[:success] = '投稿されました。'
      redirect_to @search
    else
      flash.now[:danger] = '投稿に失敗しました。'
      render :new
    end
  end

  def edit
  end

  def update
    if @search.update(search_params)
      flash[:success] = '更新されました。'
      redirect_to @search
    else
      flash.now[:danger] = '更新に失敗しました。'
      render :edit
    end
  end

  def destroy
    @search.destroy
    flash[:success] = '削除されました。'
    redirect_to searches_url
  end
  
  private
  
    def set_search
      @search = Search.find(params[:id])
    end
  
    def search_params
      params.require(:search).permit(
        :condition_name, :content, :food,
        :content_2, :food_2, :content_3, :food_3, :content_4, :food_4)
    end
end