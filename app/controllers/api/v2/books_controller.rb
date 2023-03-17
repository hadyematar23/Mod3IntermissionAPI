class Api::V2::BooksController < ApplicationController
  def index
    books = Book.all
    render json: BookSerializer.format_books(books)
  end

  # def show 
  #   render json: Book.find(params[:id])
  # end

  # def create
  #   render json: Book.create(book_params)
  # end

  # def update
  #   render json: Book.update(params[:id], book_params)
  # end

  # def destroy
  #   render json: Book.destroy(params[:id])
  # end

  # private 
  
  # def book_params
  #   params.require(:book).permit(:title, :author, :summary, :genre, :number_sold)
  # end
end