class User < ActiveRecord::Base
	belongs_to :member
	# has_secure_password
	scope :active, -> { where(active: true) }
	scope :inactive, -> { where(active: false) }
end
