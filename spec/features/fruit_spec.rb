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

  scenario 'user can edit a fruit' do
    visit '/'

    click_link "Create"

    fill_in :name, with: "Apple"
    fill_in :description, with: "Crunchy"

    click_on "Create Fruit"

    click_on "edit_apple"

    fill_in :name, with: "Green Orange"

    click_on "Update Fruit"
    expect(page).to have_no_content "Apple"
    expect(page).to have_content "Green Orange"
  end
end