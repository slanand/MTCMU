class Mentee < ActiveRecord::Base
	#relationships 
	has_many :classroom_semesters, through: :mentee_participations

	#scopes
	scope :alphabetical, -> { order('last_name', 'first_name') }
	
	#methods
	def name
		self.first_name + " " + self.last_name
	end

	def proper_name
		self.last_name + ", " + self.first_name
	end

end
