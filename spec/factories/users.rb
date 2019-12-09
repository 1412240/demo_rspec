FactoryBot.define do
  factory :user do
    firstname { Faker::Name.first_name }
    lastname { Faker::Name.last_name }
    email { Faker::Internet.email }

    factory :user_with_phones do
      after (:build) do |user|
        [:home_phone, :work_phone, :mobile_phone].each do |phone|
          user.phones << FactoryBot.build(phone,user: user)
        end
      end
    end
  end
end
