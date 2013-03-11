class LibraryBooksController < ApplicationController
  # GET /library_books
  # GET /library_books.json
  def index
    @library_books = LibraryBook.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @library_books }
    end
  end

  # GET /library_books/1
  # GET /library_books/1.json
  def show
    @library_book = LibraryBook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @library_book }
    end
  end

  # GET /library_books/new
  # GET /library_books/new.json
  def new
    @library_book = LibraryBook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @library_book }
    end
  end

  # GET /library_books/1/edit
  def edit
    @library_book = LibraryBook.find(params[:id])
  end

  # POST /library_books
  # POST /library_books.json
  def create
    @library_book = LibraryBook.new(params[:library_book])

    respond_to do |format|
      if @library_book.save
        format.html { redirect_to @library_book, notice: 'Library book was successfully created.' }
        format.json { render json: @library_book, status: :created, location: @library_book }
      else
        format.html { render action: "new" }
        format.json { render json: @library_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /library_books/1
  # PUT /library_books/1.json
  def update
    @library_book = LibraryBook.find(params[:id])

    respond_to do |format|
      if @library_book.update_attributes(params[:library_book])
        format.html { redirect_to @library_book, notice: 'Library book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @library_book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /library_books/1
  # DELETE /library_books/1.json
  def destroy
    @library_book = LibraryBook.find(params[:id])
    @library_book.destroy

    respond_to do |format|
      format.html { redirect_to library_books_url }
      format.json { head :no_content }
    end
  end
end
