require 'spec_helper'

describe AccessController do
 render_views #this line solved the problem
  before :each do
    user = User.new
user.username = "jdoe"
user.password = "secreT123KK"
user.first_name = "John"
user.last_name = "Smith"
user.user_role = "student"
user.created_at = Time.now
user.subscribtion_expire = Time.now + (2*7*24*60*60)

user.save

    user2 = User.new
user2.username = "jdoe2"
user2.password = "secreT123KK"
user2.first_name = "John2"
user2.last_name = "Smith2"
user2.user_role = "owner"
user2.created_at = Time.now
user2.subscribtion_expire = Time.now + (2*7*24*60*60)

user2.save

    user3 = User.new
user3.username = "someone"
user3.password = "secreT123KK"
user3.first_name = "John2"
user3.last_name = "Smith2"
user3.user_role = "imposter"
user3.created_at = Time.now
user3.subscribtion_expire = Time.now + (2*7*24*60*60)

user3.save

  end
 # describe "GET 'index'" do
  #  it "returns http success" do
 #     get 'index'
#      response.should be_success
 #   end
#  end

  describe "GET 'login'" do

    it "allows user to log in when student" do
      visit "/access/login"
 fill_in "Username", :with => "jdoe"
fill_in  "Password", :with => "secreT123KK"
click_button "Log In"
      response.should be_success
    end
    it "allows user to log in when owner" do
      visit "/access/login"
 fill_in "Username", :with => "jdoe2"
fill_in  "Password", :with => "secreT123KK"
click_button "Log In"
      response.should be_success
    end


end

  describe "GET 'logout'" do

    it "allows user to logout" do
      visit "/access/login"
 fill_in "Username", :with => "jdoe"
fill_in  "Password", :with => "secreT123KK"
click_button "Log In"
visit '/home'
click_link "Logout"
      response.status.should be(200)
    end
end

end
