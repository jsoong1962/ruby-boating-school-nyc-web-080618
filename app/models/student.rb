class Student
attr_reader :name
@@all = []
def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def add_boating_test(boat_test, test_status, instructor)
  BoatingTest.new(self, boat_test, test_status, instructor)
end

def self.find_student(first_name)
  Student.all.find do |student|
    student.name == first_name
end
end
end
