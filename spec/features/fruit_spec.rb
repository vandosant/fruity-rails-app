require 'spec_helper'

feature 'fruits' do
  scenario 'user can create a fruit' do
    visit '/'

    click_link "Create"

    fill_in :name, with: "Banana"
    fill_in :description, with: "Sweet"

    click_on "Create Fruit"

    expect(page).to have_content "Name: Banana"
  end
end