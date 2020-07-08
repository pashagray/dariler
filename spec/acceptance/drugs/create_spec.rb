require "rails_helper"

describe "User creates new drug", type: :feature do
  before do
    visit new_drug_path
  end
  
  context "when params are not valid" do
    before do
      click_button "Create drug"
    end
    
    it "renders form back" do
      expect(page).to have_button("Create drug")
    end

    it "shows error notification" do
      expect(page).to have_content("Check form for errors")
    end

    it "shows field error" do
      expect(page).to have_content("can't be blank")
    end

    it "doesn't create drug in DB" do
      expect(Drug.count).to eq(0)
    end
  end

  context "when drug is already exists" do
    let!(:drug) { create(:drug, title_ru: "Health potion") }

    before do
      fill_in "Drug title", with: drug.title_ru
      click_button "Create drug"
    end

    it "redirects to drug page" do
      expect(page).to have_current_path(drug_path(drug))
    end

    it "shows notification" do
      expect(page).to have_content("We already has this drug in our catalogue")
    end

    it "doesn't create duplicated entry in DB" do
      expect(Drug.count).to eq(1)
    end
  end

  context "when everything is OK" do
    before do
      fill_in "Drug title", with: "  HealTH PotioN "
      click_button "Create drug"
    end

    it "redirects to page of created drug" do
      expect(page).to have_current_path(drug_path(Drug.last))
    end

    it "shows success notification" do
      expect(page).to have_content("Drug has been successfully added")
    end

    it "creates entry in DB" do
      expect(Drug.count).to eq(1)
    end

    it "normalizes title_ru" do
      expect(Drug.last.title_ru).to eq("Health potion")
    end
  end
end
