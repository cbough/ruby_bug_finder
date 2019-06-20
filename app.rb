require 'faker'
require 'pry'
require_relative 'student'
require_relative 'classroom'
require_relative 'grade'

# Our four classrooms for the first years
@A = Classroom.new("1A")
@B = Classroom.new("1B")
@C = Classroom.new("1C")
@D = Classroom.new("1D")

# Create test students with grades in various subjects
# the last s in the function generate_student() returns the variable s
def generate_student()
  s = Student.new(Faker::Name.name, rand(11..20))
  s.report_card.add_grade("math", rand(0..100))
  s.report_card.add_grade("history", rand(0..100))
  s.report_card.add_grade("english", rand(0..100))
  s.report_card.add_grade("science", rand(0..100))
  s
end

# Generate our students
1..25.times do |i|
  @A.add_student(generate_student())
end
1..25.times do |i|
  @B.add_student(generate_student())
end
1..25.times do |i|
  @C.add_student(generate_student())
end
1..25.times do |i|
  @D.add_student(generate_student())
end

 #Outputs the rosters for each classroom
 @A.roster
 puts ""
 @B.roster
 puts ""
 @C.roster
 puts ""
 @D.roster
 puts ""

# this function checks which students failed or passed on their report cards
def find_passing_or_failing(classroom)
  classroom.students.each { |key, value|
    total = 0
    value.report_card.grades.each do |key, value|
      total = total + value
    end
    if total > 200
      puts "#{value.name}: PASS"
    else
      puts "#{value.name}: FAIL"
    end
    }
end

 find_passing_or_failing(@A)

# this function finds and labels the students "EXCEPTIONAL" if they scored 260 or above
def find_exceptional(classroom)
  classroom.students.each { |key, value|
    total = 0
    value.report_card.grades.each do |key, value|
      total = total + value
    end
    if total > 260
      puts "#{value.name} EXCEPTIONAL"
    end
    }
end

find_exceptional(@B)
