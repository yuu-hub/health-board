class SearchesController < ApplicationController
  
  def index
    @searches = Search.all
  end
  
  def show
    @search = Search.find(params[:id])
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
    @search = Search.find(params[:id])
  end

  def update
    @search = Search.find(params[:id])
    
    if @search.update(search_params)
      flash[:success] = '更新されました。'
      redirect_to @search
    else
      flash.now[:danger] = '更新に失敗しました。'
      render :edit
    end
  end

  def destroy
    @search = Search.find(params[:id])
    @search.destroy
    
    flash[:success] = '削除されました。'
    redirect_to searches_url
  end
  
  private
  
    def search_params
      params.require(:search).permit(:condition_name)
      params.require(:search).permit(:content)
    end
end