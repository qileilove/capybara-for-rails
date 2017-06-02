require 'rails_helper'

feature 'Adding new products' do
    # As a user
    # I should be able to add new products
    # In order to introduce new products to users

    scenario 'adds a new product' do
        visit '/products'
        click_link('New Product')
        fill_in 'Name', with: 'Used Airplane'
        fill_in 'Price', with: '9.99'
        click_button 'Create Product'

        expect(page).to have_content('Product was successfully created')
    end
end
