FactoryGirl.define do
    sequence(:email) { |n| "user#{n}@example.com"}
    factory :user do
        first_name "testfirst"
        last_name "testlast"
            email 
            password "test"
        admin "false"
    end
    factory :admin, class: User do
        email 
        password "testtest"
        admin true
        first_name "Admin"
        last_name "User"
    end
end
