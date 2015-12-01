FactoryGirl.define do
  factory :user do
    transient do
      upcased true
    end

    name Faker::Name.name
    email { Faker::Internet.email(name) }

    after(:build) do |user, evaluator|
      user.email.upcase! if evaluator.upcased
    end
  end
end