class Teacher < ActiveRecord::Base
	has_many :classroom_semesters
	has_many :classrooms, through: :classroom_semesters
	
	belongs_to :school

	scope :alphabetical, -> { order('school_id', 'first_name', 'last_name') }
	scope :active, -> { where(active: true) }
	scope :inactive, -> { where(active: false) }

	def name
		self.first_name + " " + self.last_name
	end

	def proper_name
		self.last_name + ", " + self.first_name
	end
end
