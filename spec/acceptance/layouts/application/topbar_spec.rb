require "feature_helper"

# We need JS here to interact with burger menu
describe "Topbar functionality", type: :feature, js: true do
  before do
    visit root_path
    find("#navbar-menu-burger").click
  end
  
  it "has \"Add drug\" link" do
    click_link "Add drug"
    expect(page).to have_current_path(new_drug_path)
  end

end
