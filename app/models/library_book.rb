# an individual physical copy of a book
class LibraryBook < ActiveRecord::Base
  attr_accessible :book_id, :library_id

  belongs_to :book
  belongs_to :library
  has_many :library_book_transactions

  def checked_out?
    library_book_transactions.select(&:checked_out?).any?
  end

end
