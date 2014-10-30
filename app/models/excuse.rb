class Excuse < ActiveRecord::Base
	has_many :meeting_attendances
	has_many :members, through: :meeting_attendances
	has_many :meetings, through: :meeting_attendances

	scope :alphabetical, -> { order('name') }
end
