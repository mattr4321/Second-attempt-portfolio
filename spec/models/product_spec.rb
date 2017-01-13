require 'rails_helper'

describe Product do
   context "when the product has comments" do

        before do 
            @product = Product.create!(name: "Vanilla cake")
        end
        before do
            @user = User.create!(name: "Matthew Rodriguez")
        end
        before do
            @comment = @product.comments.create!(rating: 1, user: @user, body: "Awful cake!")
            @comment = @product.comments.create!(rating: 3, user: @user, body: "Okay cake!")
            @comment = @product.comments.create!(rating: 5, user: @user, body: "Great cake!")
        end
        it "returns the average rating of all comments" do
            expect (:product.rating).to eq "3"
        end
    end
    
    context "Is not valid" do
        expect(Product.new(description: "Nice bike")).not_to be_valid
    end
    
end
