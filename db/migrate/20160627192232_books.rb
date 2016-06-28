class Books < ActiveRecord::Migration
  def change
    create_table "books" do |t|
      t.string "title"
      t.text "photo_url"
      t.integer "price_in_cents"
    end
  end
end
