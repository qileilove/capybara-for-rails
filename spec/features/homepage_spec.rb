require 'rails_helper'

feature 'Homepage' do
    # As a user
    # I should be able to see homepage content
    # In order to get excited about the app

    scenario 'has a welcome message' do
        visit '/'

        expect(page).to have_content('Homepage')
        expect(page).to have_content('Welcome!')
        expect(page).not_to have_content('Some unwanted text')
    end
end
