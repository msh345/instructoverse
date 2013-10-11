require 'spec_helper'

describe "Login or Signup Page" do
	before do
		@user = User.create(username: "tex", email: "tex@fake.com", password: "password", password_confirmation: "password")
	end

	it "Should signup a user" do
		visit login_path
    fill_in 'signup[username]', with: 'TNT'
		fill_in 'signup[email]', with: 'ex@fake.com'
    fill_in 'signup[password]', with: 'password'
    fill_in 'signup[password_confirmation]', with: 'password'
    click_button 'Signup'
    page.should have_content "My Created Courses"
	end

	it "Should login a user" do
		visit login_path
		fill_in 'email', with: @user.email
		fill_in 'password', with: @user.password
		click_button 'Login'
		page.should have_content "My Created Courses"
	end


end
