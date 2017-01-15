require 'rails_helper'

describe Product do
   context "when the product has comments" do
        before do 
            @product = Product.create!(name: "Vanilla cake")
            @user = User.create!(first_name: "Matthew", last_name:"Rodriguez", email:"Mattr4321@gmail.com", password: "1234" )
            @product.comments.create!(rating: 1, user: @user, body: "Awful cake!")
            @product.comments.create!(rating: 3, user: @user, body: "Okay cake!")
            @product.comments.create!(rating: 5, user: @user, body: "Great cake!")
        end
        
        
        it "returns the average rating of all comments" do
            
        end
    
    
        it "Is not valid" do
            expect(Product.new(description: "Nice bike")).not_to be_valid
        end
    end
end
