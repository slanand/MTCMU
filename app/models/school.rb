class School < ActiveRecord::Base
	has_many :teachers
	has_many :classrooms

	scope :alphabetical, -> { order('name') }
	scope :active, -> { where(active: true) }
	scope :inactive, -> { where(active: false) }
end
