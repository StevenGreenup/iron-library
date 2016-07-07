class AddOutandInToCheckouts < ActiveRecord::Migration
  def change
    add_column :checkouts, :checked_out, :boolean, default: true
  end
end
