describe "The Home Page", type: :feature do
  it "Displays the DOB logo" do
    visit '/'
    expect(page).to have_content 'Da Oostin Boyeez'
  end
end