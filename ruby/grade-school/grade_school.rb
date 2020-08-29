class School
  # attr_accessor :students, :students_by_grade
  
  def initialize
    @students = {}
    # @students_by_grade = []
  end

  # def students(grade)
  #   studs = (@students.select { |name, grade_num| grade_num == grade })
  #   studs.keys.sort
  # end

  def students(grade)
    studs = @students.collect do |name, grade_num|
      name if grade_num == grade
    end
    studs.sort
    binding.pry
  end

  def add(name, grade)
    @students[name] = grade
  end

  def students_by_grade
    wtf = []
    by_grade = {}

    # grades = @students.values.uniq.sort
    # return grades if grades == []
   
    # grades.each do |grade|
    #   by_grade[:grade] = grade
    #   by_grade[:students] = students(grade)
    #   binding.pry
    #   @wtf << by_grade
    #   binding.pry
    # end
   
    @students.each do |student, grade|
      by_grade[:grade] = grade
      by_grade[:students] = students(grade)
      wtf << by_grade
    end
    
    # @students_by_grade << by_grade
    # binding.pry
    # @wtf
  end

end
