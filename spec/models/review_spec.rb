require 'rails_helper'

RSpec.describe Review, :type => :model do
  it "is valid with valid attributes" do
    expect(Review.new).to be_valid
  end

  it "is not valid without a Tv Series" do
    review = Review.create(tv_series_id: nil, user_id: 1, star: 5, review: 'pqr')
    expect(review).to_not be_valid
  end
end