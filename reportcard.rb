require_relative 'grade'

class Report_Card

  # Constructor creates a hash that stores grades
  def initialize
    @grades = {}
  end

  # Add subject grade to hash
  def add_grade(subject, score)
    grade = Grade.new(subject, score)
    if @grades[grade.subject]
      raise "Sorry, you cannot add or change #{grade.subject} because it was already entered."
    end
    @grades[grade.subject] = grade.score
  end

  # Prints out each element of grades hash
  def print_card
    @grades.each do |subject, score|
      puts "#{subject.capitalize}: #{score}"
    end
  end

  # Returns grades hash
  def grades
    @grades
  end

end
