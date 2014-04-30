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
  end
 # describe "GET 'index'" do
  #  it "returns http success" do
 #     get 'index'
#      response.should be_success
 #   end
#  end

  describe "GET 'login'" do

    it "allows user to log in" do
      visit "/access/login"
 fill_in "Username", :with => "jdoe"
fill_in  "Password", :with => "secreT123KK"
click_button "Log In"
      response.should be_success
    end

end

end
