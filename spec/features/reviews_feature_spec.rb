require 'rails_helper'

describe "Reviewing" do 

	before do
		Restaurant.create(name:'KFC')
	end

	it "allows users to leave a review using a form" do 
		sign_up
		visit '/restaurants'
		click_link "Review KFC"
		fill_in "Thoughts", with: "so so"
		select "3", from: "Rating"
		click_button "Leave Review"
		expect(current_path).to eq "/restaurants"
		expect(page).to have_content "so so"
	end
end

describe "Averages" do 
	it 'displays an average rating for all reviews' do
		sign_up
		add_restaurant
	  leave_review('So so', "3")
	  click_link "Sign out"
	  sign_up_2
	  leave_review('Great', "5")
	  expect(page).to have_content("Average rating: 4")
	end
end