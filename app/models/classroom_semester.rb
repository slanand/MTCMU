class ClassroomSemester < ActiveRecord::Base
	belongs_to :classroom 
	belongs_to :teacher
	has_many :meetings
	has_many :mentees, through: :mentee_participations


	# has_many :member_assignments
	# has_many :members, through: :member_assignments


	scope :active, -> { where(active: true) }
	scope :inactive, -> { where(active: false) }
	scope :chronological, -> { order('year') }
end
