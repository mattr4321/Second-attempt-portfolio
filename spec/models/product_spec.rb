require 'rails_helper'

describe Product do
        before do 
            @product = Product.create!(name: "Vanilla cake", description: "white cake", image_url: "test.de/test", price: "100", colour: "white")
            @user = User.create!(first_name: "Matthew", last_name:"Rodriguez", email:"test@test.de", password: "testtest" )
            @product.comments.create!(rating: 1, user: @user, body: "Awful cake!")
            @product.comments.create!(rating: 3, user: @user, body: "Okay cake!")
            @product.comments.create!(rating: 5, user: @user, body: "Great cake!")
        end
        
        
        it "returns the average rating of all comments" do
            expect(@product.average_rating).to eq 3
        end
    
    
        it "Is not valid" do
            expect(Product.new(description: "Nice cake")).not_to be_valid
        end
    
end
