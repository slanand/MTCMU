class Meeting < ActiveRecord::Base
	has_many :meeting_attendances
	has_many :members, through: :meeting_attendances
	
	belongs_to :meeting_type
	belongs_to :classroom_semester

	scope :by_type, -> { order('meeting_type_id') }
	scope :chronological, -> { order('date') }
end
