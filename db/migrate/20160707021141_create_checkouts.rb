class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.integer :book_id
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
