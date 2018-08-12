class BoatingTest
attr_reader :student, :boat_test, :instructor
attr_writer :test_status
@@all = []
def initialize(student, boat_test, test_status, instructor)
  @student = student
  @boat_test = boat_test
  @test_status = test_status
  @instructor = instructor
  @@all << self
end

def self.all
  @@all
end
end
