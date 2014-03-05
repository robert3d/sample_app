FactoryGirl.define do
  factory :user do
    name "Robert Allison"
    email "user@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end