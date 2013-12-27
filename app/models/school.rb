class School < ActiveRecord::Base
	has_many :students, dependent: :destroy
	has_many :teachers, dependent: :destroy
	has_many :staffs, dependent: :destroy
	validates_presence_of :title

	after_create :generate_people

	def generate_people
		require 'faker'

		500.times do # how to pass params[:students] instead of hardcoding?
			Student.create :firstname => Faker::Name.name, :grade => [*9..12].sample, :school_id => self.id
			# puts "HELLO #{self.id}, #{self.studcount} HELLO"
		end

		15.times do
			Teacher.create :firstname => Faker::Name.name, :salary => [*40..80].sample, :fulltime => [true, false].sample, :school_id => self.id
		end

		5.times do
			Staff.create :title => Faker::Name.title, :school_id => self.id
		end
	end

end
