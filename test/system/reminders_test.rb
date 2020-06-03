require "application_system_test_case"

class RemindersTest < ApplicationSystemTestCase

  test "logged out users cannot see reminders" do
    visit reminders_path

    assert_equal page.current_path, root_path
    assert_text "Invalid"
  end


  test "visiting the reminders index" do
    user = login_user
    reminder1 = FactoryBot.create :reminder, user: user
    reminder2 = FactoryBot.create :reminder, user: user

    visit reminders_path

    assert_selector "h1", text: "Reminders"
    assert_text reminder1.title
    assert_text reminder2.title
  end

  test "create a new reminder" do
    user = login_user
    visit reminders_path

    click_on "New Reminder"
    fill_in "Title", with: "Upload testing video"
    fill_in "Body", with: "Need to export the video and then upload"
    click_button "Create Reminder"

    assert_text "Reminder created"
    assert_text "Upload testing video"
    assert_text "Need to export"
  end
end
