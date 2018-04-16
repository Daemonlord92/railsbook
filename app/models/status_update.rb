class StatusUpdate < ApplicationRecord
	def self.recent
		order('created_at DESC')
	end
end
