# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name
    when /^the owner home\s?page$/
      '/owner-home'
    when /^the home\s?page$/
      '/home'
when /^the login page$/
'/access/login'
when /^the user page$/
'/users'
when /^the create new user page$/
'/users/new'
when /^the renew page$/
'/access/renew'

when /^the math page$/
'/mathematics'

when /^the reading page$/
'/reading'

when /^the writing page$/
'/writing'

when /^the error page$/
'/error'

	when /^the edit page for "(.*)"/
	d = Tutorial.find_by_tutorial_name($1).id
	"/tutorials/#{d}/edit"
	when /^the profile page for "(.*)"/
	d = User.find_by_username($1).id
	"/users/#{d}"

	when /^the show page for "(.*)"/
	d = Tutorial.find_by_tutorial_name($1).id
	"/tutorials/#{d}"
when /^the tutorial home page$/
'/tutorials'
when /^the tutorial with id one$/
'/tutorials/1'
when /^the tutorial with id two$/
'/tutorials/2'
when /^the tutorial with id three$/
'/tutorials/3'
    # Add more mappings here.
    # Here is an example that pulls values out of the Regexp:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
