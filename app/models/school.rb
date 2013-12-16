class School < ActiveRecord::Base
	has_many :students
	validates_presence_of :title
end
