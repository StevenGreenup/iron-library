class AddAvailableToBooks < ActiveRecord::Migration
  def change
    remove_column :book_users, :available
    add_column :books, :available, :boolean, default: true
  end
end
