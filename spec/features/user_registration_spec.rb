feature 'registration' do
  xscenario 'a user can sign up' do
    visit '/users/new'
    fill_in :name, with: 'Teste Martin'
    fill_in :email, with: 'test@example.com'
    fill_in :password, with: 'password123'
    click_button 'Submit'

    expect(page).to have_content 'Welcome, Teste Martin'
  end
end
