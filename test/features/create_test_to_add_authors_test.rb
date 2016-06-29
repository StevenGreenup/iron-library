require "test_helper"

class CreateTestToAddAuthorsTest < Capybara::Rails::TestCase
  test "to add a new author" do
    visit root_path
    click_link "Add New Author"
    fill_in "First name", with: "Steven"
    fill_in "Last name", with: "Reddown"
    fill_in "author[Bio]", with: "testy mctesterson"
    click_button "Create Author"
  end
end
