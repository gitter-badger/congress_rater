require "rails_helper"

feature 'user views congress officials view page', %Q(
  As a user, I want to be able to visit a congress person's
  personal page with their
  information on it.
) do

  # I should be able to navigate to a congress personal page.
  # The page should have all basic information: name, website, position, party, etc.

  scenario 'user views a congress officials page' do
    congress_official = FactoryGirl.create(:congress_official)

    visit congress_official_path(congress_official)

    expect(page).to have_content congress_official.name
    expect(page).to have_content congress_official.party
    expect(page).to have_content congress_official.position
  end
end
