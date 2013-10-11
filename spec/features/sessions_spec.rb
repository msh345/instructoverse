require 'spec_helper'


describe "Home Page" do
	before do
		@user = User.create(username: "tex", email: "tex@fake.com", password: "password", password_confirmation: "password")
	end

	it "Clicks the 'login or signup' link" do
	  visit root_path
	  click_link("Login or Signup")
	  page.should have_content "Password Confirmation"
	end

	it "Clicks the 'all courses' link" do
		visit root_path
		click_link("All courses")
		page.should have_content "Available Courses"
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
