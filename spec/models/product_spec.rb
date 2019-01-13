require 'rails_helper'

describe Product do
  let(:product) { Product.create!(name: "KWC Mug") }

  let(:user) { User.create!(password: "newpassword", email: "a@a.com") }

  before do
    product.comments.create!(rating: 1, user: user, body: "Awful mug")
    product.comments.create!(rating: 3, user: user, body: "Okay mug")
    product.comments.create!(rating: 5, user: user, body: "I love this mug!")
  end

  it "returns the average rating of all comments" do

  end

  it "is not valid without a name" do
    expect(Product.new(description: "Cool painting")).not_to be_valid
  end
end
