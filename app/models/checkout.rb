class Checkout < ActiveRecord::Base

   validates :user_id, presence: true
   validates :book_id, presence: true

   belongs_to :book
   belongs_to :user
end
