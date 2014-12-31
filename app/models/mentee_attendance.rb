class MenteeAttendance < ActiveRecord::Base
	#relationships
	has_many :mentee_participations

	belongs_to :classroom_lesson

	#scopes
	scope :present_yes, -> { where(present: true) }
  	scope :present_no, -> { where(present: false) }

end
