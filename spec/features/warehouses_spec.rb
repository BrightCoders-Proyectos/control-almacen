require 'rails_helper'

feature 'Visit index warehouses page' do
  scenario 'visit the index successfully' do
    sign_in FactoryBot.create(:admin)

    visit warehouses_path

    expect(page).to have_content('Warehouses')
  end
end

feature 'Creating a Warehouse' do
  scenario 'renders a message when the warehouse is created successfully' do
    sign_in FactoryBot.create(:admin)

    visit warehouses_url
    click_on "New Warehouse"

    fill_in "Code", with: 123
    fill_in "Location", with: "Colima"
    fill_in "Name", with: "Almacen 1"
    click_on "Create Warehouse"

    expect(page).to have_content('Warehouse was successfully created')
  end
end

feature 'Updating a Warehouse' do
  scenario 'warehouse is updated successfully' do
    sign_in FactoryBot.create(:admin)

    @warehouse = FactoryBot.create(:warehouse)
    visit warehouses_path
    click_on "Edit", match: :first

    fill_in "Code", with: 5
    fill_in "Location", with: @warehouse.location
    fill_in "Name", with: @warehouse.name
    click_on "Update Warehouse"
  
    expect(page).to have_content('Warehouse was successfully updated')
  end
end

feature 'destroying a Warehouse' do
  scenario 'destroy a warehouse successfully' do
    sign_in FactoryBot.create(:admin)

    FactoryBot.create(:warehouse)
    
    visit warehouses_path
    click_on "Destroy", match: :first

    expect(page).to have_content('Warehouse was successfully destroyed')
  end
end

