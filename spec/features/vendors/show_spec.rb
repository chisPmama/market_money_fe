require "rails_helper"

RSpec.describe "Vendor Show Page" do
  before(:each) do
    visit vendor_path(55297)
  end
  
  describe 'Visiting the Vendor Show Page' do
    it 'when viewing the show page, it has the name of the vendor' do
      expect(page).to have_content("Orange County Olive Oil")
    end

    it "also has information on the contact info, name, phone, NO/YES for credit accepted, and description" do
      expect(page).to have_content("Syble Hamill")
      expect(page).to have_content("1-276-593-3530")
      expect(page).to have_content("Description: Handcrafted olive oil made from locally grown olives")
    end
    
    describe 'Extra Practice/Searching for Markets to Add' do
      it "has a form on the page to search for markets to add to the vendor" do
        expect(page).to have_field(:name)
        expect(page).to have_field(:city)
        expect(page).to have_field(:state)
        expect(page).to have_button("Search for Market")
      end
  
      it "can fill out the form with valid parameters and see the list of linked markets that match" do
        fill_in :city, with: "Alexandria"
        fill_in :state, with: "Virginia"
        click_button("Search for Market")

        expect(page).to have_link("Dey Ray Farmers' Market")
        expect(page).to have_link("King Street Station Farmers' Market")
      end
    end
  end

  
end