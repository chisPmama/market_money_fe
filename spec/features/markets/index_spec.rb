require "rails_helper"

RSpec.describe "Markets Index Page" do
  before(:each) do
    visit markets_path
    save_and_open_page
  end

  describe 'Visiting the Markets Index Page' do
    it 'lists the information of each market' do
      expect(page).to have_content("Markets")

      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content("2nd Street Farmers' Market")
      expect(page).to have_content("39 North Marketplace")
      expect(page).to have_content("Henry County Farmers Market")
    end

    it 'has a button for more info for each market that will direct to the show page' do
      within("#market-#{322474}") do
        expect(page).to have_button("More Info")
        click_button("More Info")
      end
      expect(current_path).to eq("/markets/322474")
    end
  end
end