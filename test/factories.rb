FactoryBot.define do

    factory :user do |f|
      f.sequence(:name) { |n| "Test User #{n}" }
      f.sequence(:email) { |n| "test#{n}@example.com" }
      f.password { "password" }
      f.password_confirmation { |d| d.password }
    end

    factory :task do |f|
      f.sequence(:name) { |n| "Task #{n}" }
      f.due_date { Time.zone.now+1.day }
      f.priority { 1 }
      f.association :user
    end

    factory :reminder do |f|
      f.sequence(:title) { |n| "Reminder #{n}" }
      f.body { "MyText" }
      f.association :user
    end
end
