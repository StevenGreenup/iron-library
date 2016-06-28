class AddBioToAuthors < ActiveRecord::Migration
  def change
    add_column :authors, :Bio, :text
  end
end
