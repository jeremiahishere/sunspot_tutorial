class LibraryBookTransactionsController < ApplicationController
  # GET /library_book_transactions
  # GET /library_book_transactions.json
  def index
    @library_book_transactions = LibraryBookTransaction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @library_book_transactions }
    end
  end

  # GET /library_book_transactions/1
  # GET /library_book_transactions/1.json
  def show
    @library_book_transaction = LibraryBookTransaction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @library_book_transaction }
    end
  end

  # GET /library_book_transactions/new
  # GET /library_book_transactions/new.json
  def new
    @library_book_transaction = LibraryBookTransaction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @library_book_transaction }
    end
  end

  # GET /library_book_transactions/1/edit
  def edit
    @library_book_transaction = LibraryBookTransaction.find(params[:id])
  end

  # POST /library_book_transactions
  # POST /library_book_transactions.json
  def create
    @library_book_transaction = LibraryBookTransaction.new(params[:library_book_transaction])

    respond_to do |format|
      if @library_book_transaction.save
        format.html { redirect_to @library_book_transaction, notice: 'Library book transaction was successfully created.' }
        format.json { render json: @library_book_transaction, status: :created, location: @library_book_transaction }
      else
        format.html { render action: "new" }
        format.json { render json: @library_book_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /library_book_transactions/1
  # PUT /library_book_transactions/1.json
  def update
    @library_book_transaction = LibraryBookTransaction.find(params[:id])

    respond_to do |format|
      if @library_book_transaction.update_attributes(params[:library_book_transaction])
        format.html { redirect_to @library_book_transaction, notice: 'Library book transaction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @library_book_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /library_book_transactions/1
  # DELETE /library_book_transactions/1.json
  def destroy
    @library_book_transaction = LibraryBookTransaction.find(params[:id])
    @library_book_transaction.destroy

    respond_to do |format|
      format.html { redirect_to library_book_transactions_url }
      format.json { head :no_content }
    end
  end
end
