require 'rails_helper'

feature 'reviewing' do

  before do
    Restaurant.create(name: "Georgia's Gastropub", description: 'Really good pork')
  end

  scenario 'a user wants to review an existing restaurant' do
    visit '/restaurants'
    click_link "Review Georgia's Gastropub"
    fill_in 'Thoughts', with: 'really average'
    select '1', from: 'Rating'
    click_button 'Submit Review'
    expect(current_path).to eq '/restaurants'
    expect(page).to have_content 'really average'
  end






end
