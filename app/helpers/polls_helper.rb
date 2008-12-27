#require File.expand_path(File.dirname(__FILE__) + '/../models/user')
#require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

module PollsHelper

	def get_user_name(id)
		user = User.find id
		user.uid
	end
end
