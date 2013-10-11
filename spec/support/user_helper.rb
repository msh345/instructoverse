module UserHelper

  def login_user
    @user = User.create(username: "tex", email: "tex@fake.com", password: "password", password_confirmation: "password")
    visit login_path
    fill_in 'signup[username]', with: 'TNT'
    fill_in 'signup[email]', with: 'ex@fake.com'
    fill_in 'signup[password]', with: 'password'
    fill_in 'signup[password_confirmation]', with: 'password'
    click_button 'Signup'
  end
  
end
