FactoryGirl.define do
  factory :user do
    email "ticketee@email.com"
    password "password"
    password_confirmation "password"

    factory :confirmed_user do
      email "confirmed_user@email.com"
      after_create do |user|
        user.confirm!
      end
	  end

    factory :confirmed_user_bad do
      email "confirmed_user_bad@email.com"
      after_create do |user|
        user.confirm!
      end
    end

    factory :admin_user do
      email "admin_user@email.com"
      after_create do |user|
        user.confirm!
        user.update_attribute(:admin, true)
      end
    end 
  end
end