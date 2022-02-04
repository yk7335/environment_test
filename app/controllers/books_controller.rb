class BooksController < ApplicationController
  before_action :set_book, only: %i[ show edit update destroy ]

  # GET /books or /books.json
  def index
    @books = Book.all
  end

  # GET /books/1 or /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
     @book = Book.find(params[:id])
  end

  # POST /books or /books.json
  def create
    #@book = Book.new(book_params)
    @book = Book.new(book_params)
    #@book.save
    respond_to do |format|
      if @book.save
        format.html { redirect_to books_url, notice: "Book " + @book.title + " was successfully created." }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end
 #redirect_to book_url(@book)
  # PATCH/PUT /books/1 or /books/1.json
  def update
    @book = Book.find(params[:id])
    respond_to do |format|
      if @book.update(book_params)#@book.update(title: params[:book][:title], author: params[:book][:author], price: params[:book][:price].to_f, published_date: params[:book][:published_date])#@book.update(book_params)
        format.html { redirect_to books_url, notice: "Book " + @book.title + " was successfully updated." }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1 or /books/1.json
  def delete
      @book = Book.find(params[:id])
  end
  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    respond_to do |format|
      format.html { redirect_to books_url, notice: "Book " + @book.title + " was successfully destroyed." }
      format.json { head :no_content }
    end
    #redirect_to(books_path)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_params
      params.require(:book).permit(:title, :author, :price, :published_date)
    end
end
