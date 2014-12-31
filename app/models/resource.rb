class Resource < ActiveRecord::Base
	#relationships
	belongs_to :lesson

	#scopes
	scope :alphabetical, -> { order('name') }
end
