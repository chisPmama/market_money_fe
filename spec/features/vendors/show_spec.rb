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
  end
end