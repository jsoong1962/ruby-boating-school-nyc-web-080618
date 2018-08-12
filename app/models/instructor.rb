
require "pry"
class Instructor
attr_reader :name
@@all = []
@@score = {}
def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def self.score
  @@score
end

def self.pass_student(student, test_name)
  BoatingTest.all.find do |test|
  if test.student.name == student && test.boat_test == test_name
    test.test_status = "passed"
    if !@@score["#{student} passed"]
    @@score["#{student} passed"] = 1
    else
    @@score["#{student} passed"] += 1
    end
    if !@@score["#{student} total"]
      @@score["#{student} total"] = 1
    else
     @@score["#{student} total"] += 1
   end
end
end
end

def self.fail_student(student, test_name)
  BoatingTest.all.find do |test|
  if test.student.name == student && test.boat_test == test_name
    test.test_status = "failed"
    if !@@score["#{student} total"]
      @@score["#{student} total"] = 1
    else
     @@score["#{student} total"] += 1
    end
  end
end
end

def self.student_grade_percentage(name)
(@@score["#{name} passed"] / @@score["#{name} total"].to_f * 100).round
end
end
