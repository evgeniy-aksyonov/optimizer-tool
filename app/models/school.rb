class School < ActiveRecord::Base
	has_many :students
	has_many :teachers
	validates_presence_of :title
end
