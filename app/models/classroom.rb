class Classroom < ActiveRecord::Base
	has_many :classroom_semesters
	belongs_to :school

	scope :alphabetical, -> {joins(:school).order('name', 'classroom_number')}
	scope :active, -> { where(active: true) }
	scope :inactive, -> { where(active: false) }

	def school_name
		return self.school.name
	end


end
