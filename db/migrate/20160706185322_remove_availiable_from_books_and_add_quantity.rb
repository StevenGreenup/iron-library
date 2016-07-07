class RemoveAvailiableFromBooksAndAddQuantity < ActiveRecord::Migration
  def change
    remove_column :books, :available
    add_column :books, :quantity, :integer, default: 0

  end
end
