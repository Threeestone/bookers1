class ListsController < ApplicationController
  def new
  end

  def index
    @book = Book.all
  end

  def create
    @book = Book.new(list_params)
    @book.save
    redirect_to '/lists'
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to '/lists'
  end

  private
  def list_params
    params.require(:book).permit(:title, :body)
  end
end
