# frozen_string_literal: true

module LoginHelpers
  def login
    user = create(:user)
    # user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the "confirmable" module
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
    user
  end
end
