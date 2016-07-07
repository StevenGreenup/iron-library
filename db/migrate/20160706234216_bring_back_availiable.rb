class BringBackAvailiable < ActiveRecord::Migration
  def change
    remove_column :books, :quantity
    add_column :books, :available, :boolean, default: true

  end
end
