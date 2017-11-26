# frozen_string_literal: true

describe 'Mango Kru Page', type: :feature do
  before(:each) do
    user = create(:user)
    create_list(:kru_member, 6, updater: user)
  end

  it 'Has "Mango Kru" as page title' do
    visit kru_members_path
    expect(page).to have_content 'Mango Kru'
  end

  it 'Displays Image of Crew Members' do
    visit kru_members_path
    expect(page).to have_xpath "//img[contains(@src,'/images/crew/leek.png')]"
  end

  it 'Displays a table of Mango Kru members' do
    visit kru_members_path
    expect(page).to have_selector '#kruCard', count: 6
  end

  it 'Allows for bulk upload of crew_members' do
    login ['kru_bulk_update']
    visit kru_member_upload_path
    attach_file('data', kru_member_file)
    click_button 'Save changes'
    expect(page).to have_xpath "//img[contains(@src,'/images/crew/dlux_col.png')]"
  end
end
