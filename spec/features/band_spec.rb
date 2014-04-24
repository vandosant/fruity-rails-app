require 'spec_helper'

feature 'band management' do
  scenario 'users can create a band' do
    visit '/'

    click_on "Add a band"

    fill_in "band", with: "MWRH"
    fill_in "genre", with: "Punk"
    fill_in "founded", with: "2014-01-08"
    click_button "Create Band"

    expect(page).to have_content "MWRH"
  end
end