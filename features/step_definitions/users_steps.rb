Given /^a valid user$/ do
  @user = User.new
             @user.username = "johnjohn"
             @user.password = "password123K"
           @user.save
end

Given /^a logged in user$/ do
  Given "a valid user"
  visit access_login
  fill_in "username", :with => "johnjohn"
  fill_in "password_digest", :with => "password123K"
  click_button "Log in"
end



