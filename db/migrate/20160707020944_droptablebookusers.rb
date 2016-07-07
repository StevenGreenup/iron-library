class Droptablebookusers < ActiveRecord::Migration
  def change
    drop_table :book_users
  end
end
