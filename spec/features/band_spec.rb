require 'spec_helper'

feature 'band management' do
  scenario 'users can create and edit a band' do
    visit '/'

    click_on "Add a band"

    fill_in "band", with: "MWRH"
    fill_in "genre", with: "Punk"
    fill_in "founded", with: "2014-01-08"
    click_button "Create Band"

    expect(page).to have_content "MWRH"

    click_link "edit_mwrh"

    fill_in "band", with: "Mountain Warfare Ready Heroes"
    click_button "Create Band"

    expect(page).to have_content "Mountain Warfare Ready Heroes"
    expect(page).to have_no_content "MWRH"
  end
end