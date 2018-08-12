require_relative '../config/environment.rb'
require "pry"
def reload
  load 'config/environment.rb'
end
require_relative "../app/models/instructor"
require_relative "../app/models/instructor"
require_relative "../app/models/student"


johnny = Student.new("Johnny")
james = Student.new("James")
jack = Student.new("Jack")

instructor1 = Instructor.new("Mr.Soong")
instructor2 = Instructor.new("Mr.Cruise")
instructor3 = Instructor.new("Mr.Krabs")

test1 = BoatingTest.new(johnny, "test1", "pending", instructor1)
test2 = BoatingTest.new(jack, "test2", "pending", instructor2)
test3 = BoatingTest.new(james, "test3", "pending", instructor3)
student_test1 = johnny.add_boating_test("test1", "pending", instructor1)



passed_test1 = Instructor.pass_student("Johnny", "test1")
passed_test2 = Instructor.pass_student("Johnny", "test1")
failed_test1 = Instructor.fail_student("Johnny", "test1")
 # percentage = Instructor.student_grade_percentage("Johnny")
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
