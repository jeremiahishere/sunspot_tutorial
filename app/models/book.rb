# the idea of a book
class Book < ActiveRecord::Base
  attr_accessible :author, :name

  has_many :library_books

  validates_presence_of :name, :author

  def full_name
    "#{name} written by #{author}"
  end
end
