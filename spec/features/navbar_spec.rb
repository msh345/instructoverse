require 'spec_helper'

describe "Navigation Bar" do
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

  it "Clicks the 'Logout' link" do
    visit login_path
    fill_in 'email', with: @user.email
    fill_in 'password', with: @user.password
    click_button 'Login'
    click_link("Logout")
    page.should have_content "Login or Signup"
  end

  it "Clicks the 'My Profile' link" do
    visit login_path
    fill_in 'email', with: @user.email
    fill_in 'password', with: @user.password
    click_button 'Login'
    visit root_path
    click_link("My Profile")
    page.should have_content "Profile for"
  end

end
