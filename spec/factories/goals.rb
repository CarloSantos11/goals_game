# This will guess the User class
FactoryBot.define do
  factory :goal do
    title { "Sample goal" }
    description { "Same goal description right here."}
    points { 50 }
    user
  end
end
