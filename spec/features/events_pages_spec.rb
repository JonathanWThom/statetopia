require 'rails_helper'

describe "user choosing an event that happens on the nation" do
  it "displays event details", js: true do
    user = create(:user, :email => "trump@wtf.com")
    event = create(:event)
    nation = create(:nation, :user_id => user.id)
    login_as(user)
    visit nation_path(nation)
    click_on "Next Event"
    expect(page).to have_content("Hurricane")
  end

  it "displays user choice and edits nation resources", js: true do
    user = create(:user, :email => "trump@wtf.com")
    event = create(:event)
    nation = create(:nation, :user_id => user.id)
    response = create(:response, :event_id => event.id)
    login_as(user)
    visit nation_path(nation)
    click_on "Next Event"
    click_on "Choose"
    expect(page).to_not have_content("Hurricane")
  end
end
