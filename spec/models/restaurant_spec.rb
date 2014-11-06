require 'spec_helper'

RSpec.describe Restaurant, :type => :model do
  it 'is not valid with a name of zero characters' do
    restaurant = Restaurant.new(name: "")
    expect(restaurant).to have(1).error_on(:name)
    expect(restaurant).not_to be_valid
  end

	  describe '#average_rating' do
	  	context 'no reviews' do
	   	 it 'returns "N/A" when there are no reviews' do
	      restaurant = Restaurant.create(name: "The Ivy")
	      expect(restaurant.average_rating).to eq 'N/A'
	    end
	  end
	end

	context 'multiple reviews' do
  it 'returns the average' do
    restaurant = Restaurant.create(name: "The Ivy")
    restaurant.reviews.create(rating: 1)
    restaurant.reviews.create(rating: 5)
    expect(restaurant.average_rating).to eq 3
  end
end
end