FactoryBot.define do
  sequence(:email) { |n| "user#{n}@example.com" }
  factory :user do
    password "newpass"
    first_name "John"
    last_name "Doe"
    admin false
  end

  factory :admin, class: User do
    email
    password "newpw"
    admin true
    first_name "Admin"
    last_name "User"
  end
end
