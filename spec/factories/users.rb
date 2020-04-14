# This will guess the User class
FactoryBot.define do
  factory :user do
    name { "John" }
    email { "antcs07@gmail.com"}
    points { 0 }
  end

  after(:create) do |user|
    goal_1 = create(:goal, user: user)
    goal_2 = create(:goal, user: user)
    user.goals = [goal_1, goal_2]
  end
end