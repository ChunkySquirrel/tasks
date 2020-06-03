require "test_helper"

class RemindersTest < ApplicationSystemTestCase
  test "valid reminder" do
    reminder = FactoryBot.build :reminder
    assert reminder.valid?
  end

  test 'invalid without title' do
    reminder = FactoryBot.build :reminder
    reminder.title = nil

    refute reminder.valid?
  end


  test 'invalid without user' do
    reminder = FactoryBot.build :reminder
    reminder.user = nil
    refute reminder.valid?
  end
end
