require "rails_helper"

RSpec.describe "Market Show Page" do
  before(:each) do
    visit market_path(322474)
  end
  
  describe 'Visiting the Market Show Page' do
    it 'when viewing the show page, it returns the market name and readable address' do
      expect(page).to have_content("2nd Street Farmers' Market")
      expect(page).to have_content("194 second street Amherst, Virginia, 24521")
    end

    it 'when viewing the show page, it also returns the list of vendors for that market' do
      expect(page).to have_content("Vendors at our Market")
      expect(page).to have_content("Orange County Olive Oil")
      expect(page).to have_content("The Vodka Vault")
      expect(page).to have_content("The Fabric Patch")
    end

    it "Each vendor is a link that goes to the show page of the vendor" do
      click_link("Orange County Olive Oil")
      expect(current_path).to eq(vendor_path(55297))
    end
  end
end