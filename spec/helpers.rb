  def sign_up
    visit '/'
    click_link('Sign up')
    fill_in("Email", with: 'test@example.com')
    fill_in("Password", with: 'testtest')
    fill_in("Password confirmation", with: 'testtest')
    click_button('Sign up')
  end

  def add_restaurant
    click_link 'Add a restaurant'
    fill_in 'Name', with: 'KFC'
    fill_in 'Description', with: 'Bucket food.'
    click_button 'Create Restaurant'
  end

  def leave_review(thoughts, rating)
    visit '/restaurants'
    click_link 'Review KFC'
    fill_in "Thoughts", with: thoughts
    select rating, from: 'Rating'
    click_button 'Leave Review'
  end

    def sign_up_2
    visit '/'
    click_link('Sign up')
    fill_in("Email", with: 'test@test.com')
    fill_in("Password", with: 'testtest')
    fill_in("Password confirmation", with: 'testtest')
    click_button('Sign up')
  end