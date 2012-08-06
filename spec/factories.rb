FactoryGirl.define do
  factory :user do
    name     "Eric Jian"
    email    "eric@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end