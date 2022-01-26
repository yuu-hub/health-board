class SearchesController < ApplicationController
  
  def index
    @searches = Search.all
  end
  
  def show
    @search = Search.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
