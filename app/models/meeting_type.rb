class MeetingType < ActiveRecord::Base
	has_many :public_events
	has_many :meetings

	scope :alphabetical, -> { order('type') }
end
