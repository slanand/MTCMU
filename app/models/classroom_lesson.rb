class ClassroomLesson < ActiveRecord::Base
	#relationships
	belongs_to :lesson
	belongs_to :meeting
	
	has_many :mentee_attendances
end
