require 'rails_helper'

context 'User on the homepage and not logged in' do 
	it "Should display sign in and sign up links" do 
		visit '/'
		expect(page).to have_content('Sign in')
		expect(page).to have_content('Sign up')
	end

	it "Should not see the sign out button" do 
		visit '/'
		expect(page).not_to have_link('Sign out')
	end
end

context 'User signed in on the homepage' do 

	before do 
		visit '/'
		click_link('Sign up')
		fill_in("Email", with: 'test@example.com')
		fill_in("Password", with: 'testtest')
		fill_in("Password confirmation", with: 'testtest')
		click_button('Sign up')
	end

	it "Should see sign out link" do 
		visit '/'
		expect(page).to have_link('Sign out')
	end

	it "Should not see sign in and sign up link" do 
		visit '/'
		expect(page).not_to have_link('Sign in')
		expect(page).not_to have_link('Sign up')
	end
end