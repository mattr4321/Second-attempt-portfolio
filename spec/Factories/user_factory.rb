FactoryGirl.define do
    sequence(:email) { |n| "user#{n}@example.com"}
    factory :user do
        first_name "Matthew"
        last_name "Rodriguez"
        email 
        password "1234"
        admin "false"
    end
    factory :admin, class: User do
        email 
        password "1234"
        admin true
        first_name "Admin"
        last_name "User"
    end
end
