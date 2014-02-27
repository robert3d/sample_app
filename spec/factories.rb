FactoryGirl.define do
  factory :user do
    name "Robert Allison"
    email "robert@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end