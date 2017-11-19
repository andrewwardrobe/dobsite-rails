# frozen_string_literal: true

describe 'Menu', type: :feature do
  it 'Has Da Oostin Boyeez logo' do
    visit '/'
    expect(page.find('//*[@id="brand"]').text).to eq 'Da Oostin Boyeez'
  end

  it 'Has Home Page Link' do
    visit '/'
    expect(page).to have_link 'Home', href: '/'
  end

  it 'Has Mango Kru Link' do
    visit '/'
    expect(page).to have_link 'Mango Kru', href: kru_members_path
  end
end
