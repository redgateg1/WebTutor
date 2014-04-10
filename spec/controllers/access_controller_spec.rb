require 'spec_helper'

describe AccessController do

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
fill_in "Password", :with => "secret"
click_button "Log in"
      response.should redirect_to("/home")
    end
  end

end
