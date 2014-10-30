class MemberAssignment < ActiveRecord::Base
	belongs_to :member
	belongs_to :classroom_semester

	validates :role, inclusion: { in:["Mentor", "Mentor Captain"], message: "is not a recognized role in system" }
  
end
