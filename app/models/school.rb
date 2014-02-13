class School < ActiveRecord::Base
	has_many :students, dependent: :destroy
	has_many :teachers, dependent: :destroy
	has_many :staffs, dependent: :destroy
	has_one :schoolinfos, dependent: :destroy
	validates_presence_of :title

	# after_create :generate_people
	# after_create :generate_info

	# def people_count=(count)
 #    @people_count=count
 #  end

 #  def people_count
 #    @people_count
 #  end

 #  def number_of type
 #    people_count[type].to_i
 #  end

 #  def generate_people
	# 	require 'faker'

 #    number_of('students').times do
	# 		Student.create :firstname => Faker::Name.name, :grade => [*9..12].sample, :school_id => self.id
	# 	end

 #    number_of('teachers').times do
	# 		Teacher.create :firstname => Faker::Name.name, :salary => [*40..60].sample, :fulltime => [true, false].sample, :school_id => self.id
	# 	end
	# end

	# def generate_info
	# 	Schoolinfo.create :students => self.students, :school_id => self.id
	# end

end
