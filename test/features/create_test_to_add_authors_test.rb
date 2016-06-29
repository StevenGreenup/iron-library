require "test_helper"

class CreateTestToAddAuthorsTest < Capybara::Rails::TestCase

  setup do
    User.create! username: "testing", password: "testing"
  end

  test "to add a new author" do
    visit root_path
    click_link "Sign in"
    fill_in "Username", with: "testing"
    fill_in "Password", with: "testing"
    click_button "Sign in"
    click_link "Add New Author"
    fill_in "First name", with: "Steven"
    fill_in "Last name", with: "Reddown"
    fill_in "author[Bio]", with: "testy mctesterson"
    click_button "Create Author"
  end
end
