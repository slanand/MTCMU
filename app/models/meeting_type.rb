class MeetingType < ActiveRecord::Base
	has_many :public_events
	has_many :meetings

	types_array = ["teaching", "chapter meeting", "committee meeting"]
  	validates :type, inclusion: { in: types_array, allow_blank: true } 

	scope :alphabetical, -> { order('type') }
end
