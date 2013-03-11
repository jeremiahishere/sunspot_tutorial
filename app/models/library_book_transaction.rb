class LibraryBookTransaction < ActiveRecord::Base
  attr_accessible :checkin_at, :checkout_at, :library_book_id, :user_id

  belongs_to :library_book
  belongs_to :user

  def checked_out?
    checkin_at.nil?
  end
end
