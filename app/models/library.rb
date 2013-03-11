class Library < ActiveRecord::Base
  attr_accessible :address, :name

  has_many :library_books
end
