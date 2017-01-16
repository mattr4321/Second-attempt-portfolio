FactoryGirl.define do
    sequence(:email) { |n| "user#{n}@example.com"}
    factory :user do
        first_name "testfirst"
        last_name "testlast"
            email 
            password "testtest"
        admin "false"
    end
    factory :admin, class: User do
        email 
        password "12345678"
        admin true
        first_name "Admin"
        last_name "User"
    end
end
