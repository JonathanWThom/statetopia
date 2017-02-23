require 'rails_helper'

describe "how user creates nation" do
  it "creates nation" do
    user = create(:user)
    visit "/"
    click_on "Log In"
    fill_in "Email", :with => "user@email.com"
    fill_in "Password", :with => "password"
    click_on "Log in"
    click_on "Start Your Nation"
    fill_in "nation_name", :with => "Cascadia"
    select "Dictatorship", :from => "nation_government"
    select "Mixed Economy", :from => "nation_economy"
    select "Plains", :from => "nation_geography"
    click_on "Create Nation"
    expect(page).to have_content("Cascadia")
  end

  it "show errors for creating nation when fields empty" do
    user = create(:user)
    login_as(user)
    visit new_nation_path
    click_on "Create Nation"
    expect(page).to have_content('Clean up')
  end

end
