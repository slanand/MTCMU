class Lesson < ActiveRecord::Base
	mount_uploader :presentation, AvatarUploader

	#relationships
	has_many :resources
	has_many :classroom_lessons

	#scopes
	scope :alphabetical, -> { order('lesson_plan') }

end
