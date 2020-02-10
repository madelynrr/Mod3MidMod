require 'rails_helper'

feature "a user can see all members of the Order of the Phoenix by House" do
  scenario "a user selects a house and clicks on Search For Members button" do
    visit "/"

    select "Gryffindor", from: :house

    click_button "Search For Members"

    expect(current_path).to eq("/search")
    expect(page).to have_content("21 Members")
    expect(page).to have_css(".members", count: 21)

    within (first(".members")) do
      expect(page).to have_content("Name: Sirius Black")
      expect(page).to have_content("Role: n/a")
      expect(page).to have_content("House: Gryffindor")
      expect(page).to have_content("Patronus: n/a")
    end

  end
end
