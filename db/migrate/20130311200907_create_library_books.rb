class CreateLibraryBooks < ActiveRecord::Migration
  def change
    create_table :library_books do |t|
      t.integer :library_id
      t.integer :book_id

      t.timestamps
    end
  end
end
