Given /^a valid tutorial$/ do
  @tutorial = Tutorial.new
@tutorial.tutorial_name = "MathStuff"
@tutorial.tutorial_discription = "MathStuff Description"
@tutorial.tutorial_path = "/math.mv4"
@tutorial.tutorial_teacher_name = "miss"
@tutorial.tutorial_date_release = DateTime.now
@tutorial.save
end
Given /^a math tutorial$/ do
  @tutorial = Tutorial.new
@tutorial.tutorial_name = "MathStuff"
@tutorial.tutorial_discription = "MathStuff Description"
@tutorial.tutorial_path = "/math.mv4"
@tutorial.CategoryID = "math"
@tutorial.tutorial_teacher_name = "miss"
@tutorial.tutorial_date_release = DateTime.now
@tutorial.save
end
Given /^a writing tutorial$/ do
  @tutorial = Tutorial.new
@tutorial.tutorial_name = "WritingStuff"
@tutorial.tutorial_discription = "Writing Description"
@tutorial.tutorial_path = "/math.mv4"
@tutorial.CategoryID = "writing"
@tutorial.tutorial_teacher_name = "miss"
@tutorial.tutorial_date_release = DateTime.now
@tutorial.save
end

Given /^a reading tutorial$/ do
  @tutorial = Tutorial.new
@tutorial.tutorial_name = "ReadingStuff"
@tutorial.tutorial_discription = "Reading Description"
@tutorial.tutorial_path = "/math.mv4"
@tutorial.CategoryID = "reading"
@tutorial.tutorial_teacher_name = "miss"
@tutorial.tutorial_date_release = DateTime.now
@tutorial.save
end

Given /^an expired user$/ do
  @user = User.new
             @user.username = "johnjohn"
             @user.password = "password123K"
	@user.created_at = "2-1-2010"
@user.user_role = "student"
@user.first_name = "dsadsa"
@user.last_name = "dasdsa"
@user.subscribtion_expire = "2-2-2010"
           @user.save
end

Given /^a valid user$/ do
  @user = User.new
             @user.username = "johnjohn"
             @user.password = "password123K"
	@user.created_at = Time.now
@user.user_role = "student"
@user.first_name = "dsadsa"
@user.last_name = "dasdsa"
@user.subscribtion_expire = Time.now + (2*7*24*60*60)
           @user.save
end
Given /^a valid owner$/ do
  @user = User.new
             @user.username = "owner"
             @user.password = "lol123"
	@user.created_at = Time.now
@user.user_role = "owner"
@user.first_name = "dsadsa"
@user.last_name = "dasdsa"
@user.subscribtion_expire = Time.now + (2*7*24*60*60)
           @user.save
end


Given /^a logged in owner$/ do
  Given "a valid user"
  visit access_login
  fill_in "username", :with => "owner"
  fill_in "password", :with => "lol123"
  click_button "Log in"
end

Given /^a logged in user$/ do
  Given "a valid user"
  visit access_login
  fill_in "username", :with => "johnjohn"
  fill_in "password", :with => "password123K"
  click_button "Log in"
end


Given /the following tutorials exist/ do |tutorials_table|
  tutorials_table.hashes.each do |x|

Tutorial.create x
  end
end

