require 'rails_helper'

feature 'Editing Cars' do
  scenario 'can edit a car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1969'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content("1969 Ford Mustang created")
    expect(page).to have_content("$2,300.00")

    click_link 'Edit'

    fill_in 'Price', with: '46000'

    click_button 'Update Car'

    expect(page).to have_content("1969 Ford Mustang updated")
    expect(page).to have_content("$46,000.00")
  end
end
