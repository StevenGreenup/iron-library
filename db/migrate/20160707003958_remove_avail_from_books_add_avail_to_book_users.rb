class RemoveAvailFromBooksAddAvailToBookUsers < ActiveRecord::Migration
  def change
    remove_column :books, :available
    add_column :book_users, :available, :boolean, default: true

  end
end
