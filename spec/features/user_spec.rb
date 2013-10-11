require 'spec_helper'

describe "User Profile Page" do 
  before do 
    @user = User.create(username: "tex", email: "tex@fake.com", password: "password", password_confirmation: "password")
    @user.created_courses.create(title: "my course", description: "cool", url: "http://www.google.com")
    visit login_path
    fill_in 'email', with: @user.email
    fill_in 'password', with: @user.password
    click_button 'Login'
  end

  it "Clicks 'create new course' link" do 
    visit user_path(@user)
    click_link("Create New Course")
    page.should have_content "Create a Course"
  end 

  it "Clicks the 'my course' link in My Created Courses" do
    visit user_path(@user)
    click_link("my course")
    page.should have_content "http://www.google.com"
  end

  it "Clicks 'All Courses' Link" do 
    visit user_path(@user)
    click_link("All courses")
    page.should have_content ""
  end 

end 