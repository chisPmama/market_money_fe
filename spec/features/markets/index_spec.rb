require "rails_helper"

RSpec.describe "Markets Index Page" do
  before(:each) do
    visit markets_path
  end

  describe 'Visiting the Markets Index Page' do
    it 'lists the information of each market' do
      expect(page).to have_content("Markets")

      expect(page).to have_content("14&U Farmers' Market")
      expect(page).to have_content("2nd Street Farmers' Market")
      expect(page).to have_content("39 North Marketplace")
      expect(page).to have_content("Henry County Farmers Market")
    end
  end
end