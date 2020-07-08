require "rails_helper"

describe "User creates new drugstore", type: :feature do
  before do
    visit new_drugstore_path
  end
  
  context "when params are not valid" do
    before do
      click_button "Create pharmacy"
    end
    
    it "renders form back" do
      expect(page).to have_button("Create pharmacy")
    end

    it "shows error notification" do
      expect(page).to have_content("Check form for errors")
    end

    it "shows field error" do
      expect(page).to have_content("can't be blank")
    end

    it "doesn't create drugstore in DB" do
      expect(Drugstore.count).to eq(0)
    end
  end

  context "when everything is OK" do
    before do
      fill_in "Pharmacy name", with: "Alchemist Lab"
      fill_in "Address", with: "Dark & Old Forest"
      click_button "Create pharmacy"
    end

    it "redirects to page of created drugstore" do
      expect(page).to have_current_path(drugstore_path(Drugstore.last, city: City.default))
    end

    it "shows success notification" do
      expect(page).to have_content("Pharmacy has been successfully added")
    end

    it "creates entry in DB" do
      expect(Drugstore.count).to eq(1)
    end

    it "normalizes title" do
      expect(Drugstore.last.title).to eq("Alchemist Lab")
    end
  end
end
