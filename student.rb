require_relative 'reportcard'

class Student
  attr_accessor :name, :age, :report_card

  # Constructor accepts name and age attributes and creates an instance of Reportcard
  def initialize(name, age)
    @name = name
    @age = age
    @report_card = Report_Card.new
  end
end
