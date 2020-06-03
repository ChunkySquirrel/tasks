require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "Signing up" do
    visit signup_path

    fill_in "Name", with: "Test Account"
    fill_in "Email", with: "test2@account.com"
    fill_in "Password", with: "secret"
    fill_in "Confirm Password", with: "secret"
    click_on "Sign up"

    assert_text "Account Created"
    assert_selector "nav", text: "Logout"

    refute_selector "nav", text: "Login"
  end

  test "Signing up doesn't work with errors" do
    visit signup_path

    fill_in "Name", with: "Test Account"
    fill_in "Password", with: "secret"
    fill_in "Confirm Password", with: "secret"
    click_on "Sign up"

    assert_text "Please fix errors below."
    assert_selector "nav", text: "Login"

    refute_selector "nav", text: "Logout"

  end

  test "Login with user works" do
    user = FactoryBot.create :user, email: "george@test.com", password: "correct"
    visit login_path
    
    fill_in "Email", with: "george@test.com"
    fill_in "Password", with: "correct"

    click_on "Login"

    assert_text "Logged In"
    assert_selector "nav", text: "Logout"
    refute_selector "nav", text: "Login"
  end

  test "Login with wront password fails" do
    user = FactoryBot.create :user, email: "george@test.com", password: "correct"
    visit login_path

    fill_in "Email", with: "george@test.com"
    fill_in "Password", with: "oppss"

    click_on "Login"

    assert_text "Invalid"
    assert_selector "nav", text: "Login"
  end

end
