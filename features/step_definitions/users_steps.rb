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

