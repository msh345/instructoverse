require 'spec_helper'
include UserHelper
include CourseHelper

describe "Create Course page" do
  before do
    login_user
  end

  it "Should display 'Create a Course' page" do
    visit new_course_path
    page.should have_content "Create a Course"
  end

  it "Should create a course in db" do
    visit new_course_path
    expect { fill_in 'course[title]', with: 'Cat Care2'
    fill_in 'course[url]', with: 'http://www.cats.com'
    fill_in 'course[description]', with: 'Here kitty kitty kitty'
    click_button 'Create or Edit Course' 
    }.to change(Course, :count).by(1) 
  end

  it "Should show users created courses" do
    visit new_course_path
    fill_in 'course[title]', with: 'Cat Playing'
    fill_in 'course[url]', with: 'http://www.catnip.com'
    fill_in 'course[description]', with: 'Want some catnip?'
    click_button 'Create or Edit Course' 
    page.should have_content "My Created Courses"
  end
  
  it "Should not create a course if any field is empty" do
    visit new_course_path
    expect { fill_in 'course[title]', with: ''
    fill_in 'course[url]', with: ''
    fill_in 'course[description]', with: ''
    click_button 'Create or Edit Course' 
    }.to change(Course, :count).by(0) 
  end

  it "Should show errors if any field is empty" do
    visit new_course_path
    fill_in 'course[title]', with: ''
    fill_in 'course[url]', with: ''
    fill_in 'course[description]', with: ''
    click_button 'Create or Edit Course' 
    page.should have_content "errors prohibited this course from being saved"
  end
end

describe "Individual Course Page for general/non-creator user" do
  before do
    login_user
    new_spec_course
  end

  it "Should display 'Course:' text" do
    visit course_path(@course)
    page.should have_content "Course:"
  end

  it "Should display 'Favorite' link for non-creator" do
    visit course_path(@course)
    click_link 'Favorite'
    page.should have_content "Profile for"
  end
end

describe "Individual Course Page for creator user" do
  before do
    course_and_creator
  end

  it "Should display 'Edit' link for creator" do
    visit course_path(@created_course)
    click_link 'Edit'
    page.should have_content "Edit a Course"
  end

  it "Should delete course in database after confirming delete link", :js => true do
    visit course_path(@created_course)
    expect { page.evaluate_script('window.confirm = function() { return true; }')
    click_link 'Delete'
    }.to change(Course, :count).by(-1) 
  end 
end

describe "All Courses Page" do
  before do
    login_user
    new_spec_course
  end

  it "Should display 'Available Courses'" do
    visit courses_path
    page.should have_content("Available Courses")
  end

  it "Should display link to a course" do
    visit courses_path
    click_link 'Cat Care'
    page.should have_content "Course:"
  end

end

describe "Edit Page" do
  before do
    course_and_creator
  end

  it "Should display 'Edit a Course'" do
    visit edit_course_path(@created_course)
    page.should have_content("Edit a Course")
  end

end


