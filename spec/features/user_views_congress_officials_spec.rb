require "rails_helper"

feature 'user views congress officials', %Q(
  As a user, I want to be able to visit a page with a list of all
  congress men and women with their name, position, and party.
) do

  # I should be able to navigate to a page with a list of all congress.
  # I should be able to view their name, position, and party.
  # Their names should be a link to their personal page.

  scenario 'user views list of congress officials' do
    congress_official = FactoryGirl.create(:congress_official)
    visit congress_officials_path

    expect(page).to have_content congress_official.name
    expect(page).to have_content congress_official.party
  end
end
