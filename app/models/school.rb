class School < ActiveRecord::Base
	has_many :students, dependent: :destroy
	has_many :teachers, dependent: :destroy
	validates_presence_of :title

	after_create :generate_people

	def generate_people
		require 'faker'

		500.times do # how to pass params[:students] instead of hardcoding?
			Student.create :firstname => Faker::Name.name, :school_id => self.id
			# puts "HELLO #{self.id}, #{self.studcount} HELLO"
		end

		3.times do # how to pass params[:students] instead of hardcoding?
			Teacher.create :firstname => Faker::Name.name, :school_id => self.id
			# puts "HELLO #{self.id}, #{self.studcount} HELLO"
		end
	end

end
