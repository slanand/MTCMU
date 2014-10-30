class MeetingAttendance < ActiveRecord::Base
	belongs_to :excuse
	belongs_to :meeting
	belongs_to :member
end
