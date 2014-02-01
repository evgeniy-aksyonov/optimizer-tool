# namespace :db do
#   desc "Erase and fill db"
#   task :populate => :environment do
#     require 'populator'
#     require 'faker'

#     [Teacher, Student, School].each(&:delete_all)

#     School.populate 10 do |school|
#       school.title = Faker::Company.name
#     end

#     Student.populate 10 do |student|
#       student.firstname = Faker::Name.name
#       student.school_id = [*10..20].sample
#     end

#     Teacher.populate 10 do |teacher|
#       teacher.firstname = Faker::Name.name
#       teacher.school_id = [*10..20].sample
#     end
#   end
# end