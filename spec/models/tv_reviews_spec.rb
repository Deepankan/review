require 'rails_helper'

RSpec.describe TvSeries, :type => :model do
  it "is valid with valid attributes" do
    expect(TvSeries.new).to be_valid
  end

  it "is not valid without a name" do
    tv = TvSeries.create(name: nil, gener: 'PQR', no_of_seasons: 1, date_of_first_release: Date.today, director: 'ABC', actor: 'PQR', shoot_location: 'India', country: 'India')
    expect(tv).to_not be_valid
  end
end