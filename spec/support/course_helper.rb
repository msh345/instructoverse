module CourseHelper

  def new_spec_course
    @course = Course.create(title: "Cat Care", description: "Here kitty kitty kitty", url: "http://www.cats.com", creator_id: "#{@user.id}")
  end

  def course_and_creator
    @creator_user = User.create(username: "Beep Anders", email: "beep@anders.com", password: "password", password_confirmation: "password")
    visit login_path
    fill_in 'email', with: 'beep@anders.com'
    fill_in 'password', with: 'password'
    click_button 'Login'
    
    @created_course = Course.create(title: "Beep World", description: "Beep Anders teaches you a thing or two", url: "http://www.anders.com/freakout-with-beep/", creator_id: "#{@creator_user.id}")
  end
end
