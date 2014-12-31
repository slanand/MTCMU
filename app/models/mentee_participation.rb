class MenteeParticipation < ActiveRecord::Base
	#relationships
	belongs_to :classroom_semester
	belongs_to :mentee
	belongs_to :mentee_attendance

	
end
