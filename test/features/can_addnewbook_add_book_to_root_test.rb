require "test_helper"

class CanAddnewbookAddBookToRootTest < Capybara::Rails::TestCase

  setup do
    Author.create! first_name: "Mark", last_name: "Twain", Bio:"He is an author"
  end


  test "Can add new book add book" do
    visit root_path
    click_link "Add New Book"
    fill_in "Title", with: "Huckleberry Finn"
    fill_in "Photo url", with: "http://cdn3.volusion.com/jtoq7.b7owf/v/vspfiles/photos/ADVENTURES_OF_HUCKLEBERRY_FINN-2.jpg"
    fill_in "Price in cents", with: "1000"
    select 'Mark Twain', from: 'Author'
    click_button "Create Book"

  end
end
