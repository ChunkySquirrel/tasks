require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  test "index page shows all tasks" do
    user = login_user
    task1 = FactoryBot.create :task, user: user
    task2 = FactoryBot.create :task, user: user


    visit tasks_path
    assert_text task1.name
    assert_text task2.name
  end
end
