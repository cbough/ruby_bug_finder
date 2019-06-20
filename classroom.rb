class Classroom
  attr_accessor :name
  attr_accessor :students

  # Constructor takes a name attribute and creates a hash that stores students
  def initialize(name)
    @name = name
    @students = {}
  end

  # Add student to students hash
  def add_student(student)
    if @students[student.name]
      raise "Sorry, #{student} is already in here."
    end
    @students[student.name] = student
  end

  # Prints classroom roster
  def roster
    puts @name + " roster:"
    @students.each do |key, value|
      puts "#{value.name}: #{value.age}"
    end
  end

end
