class Meeting < ActiveRecord::Base
	mount_uploader :meeting_minutes, AvatarUploader

	has_many :meeting_attendances
	has_many :members, through: :meeting_attendances
	has_one :classroom_lesson
	
	belongs_to :meeting_type
	belongs_to :classroom_semester

	#scopes	
	scope :by_type, -> { order('meeting_type_id') }
	scope :chronological, -> { order('date') }
end
