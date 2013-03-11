class CreateLibraryBookTransactions < ActiveRecord::Migration
  def change
    create_table :library_book_transactions do |t|
      t.integer :library_book_id
      t.integer :user_id
      t.datetime :checkout_at
      t.datetime :checkin_at

      t.timestamps
    end
  end
end
