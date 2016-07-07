require "test_helper"

class BooksUserTest < ActiveSupport::TestCase
  def books_user
    @books_user ||= BooksUser.new
  end

  def test_valid
    assert books_user.valid?
  end
end
