class User < ActiveRecord::Base
	has_many :polls
	
	def is_admin?
		if self.uid == 'eric'
			true
		else
			false
		end
	end
	
	def last_3_polls
		polls = self.polls
	end
end
