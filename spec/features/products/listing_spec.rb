require 'rails_helper'

feature 'Listing products' do
    # As a user
    # I should be able to see list of all products
    # In order to browse products and find something useless to buy

    scenario 'sees the list of all products' do
        visit '/products'

        expect(page).to have_content('Listing Products')
        expect(page).to have_content('Name')
        expect(page).to have_content('Price')
    end
end
