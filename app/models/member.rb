class Member < ActiveRecord::Base
	#relationships
	has_many :member_assignments
	has_many :classroom_semesters, through: :member_assignments

	has_many :meeting_attendances
	has_many :meetings, through: :meeting_attendances
	has_many :excuses, through: :meeting_attendances

	has_one :user

	#validations
	validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i, message: "is not a valid format"
	validates :admin, inclusion: { in: %w[Admin Add-Only Read-Only], message: "is not a recognized role in system" }
  
	#scopes
	scope :alphabetical, -> { order('last_name', 'first_name') }
	scope :active, -> { where(active: true) }
	scope :inactive, -> { where(active: false) }
	
	#methods
	def name
		self.first_name + " " + self.last_name
	end

	def proper_name
		self.last_name + ", " + self.first_name
	end

	#have a method that returns the number of points a member has accumulated
end
