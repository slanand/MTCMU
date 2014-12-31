class PublicEvent < ActiveRecord::Base
	mount_uploader :flyer, AvatarUploader

	belongs_to :meeting_type
	validates_date :start_date, on_or_after: lambda { Date.today }, on_or_after_message: "cannot be in the past", on:  :create
    validates_date :end_date, on_or_after: :start_date

    scope :chronological, -> { order('start_date','end_date', 'time') }
    scope :upcoming, -> { where('start_date >= ?', Date.today) }
  	scope :past, -> { where('end_date < ?', Date.today) }
end
