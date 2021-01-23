class StudentArray 
  @@class_student = []
  def initialize(stud_name, roll_num, marks)
   @student = {"name": stud_name, "roll_no": roll_num, "marks": marks}
  end

  def insert
  	@@class_student.push(@student)
  end
  # passing array of hash and name to check student pass or fail
  def check_mark_by_name(class_student, name)
  	class_student.each do |stud|
   	 if stud[:name] == name
  		@result = "pass" if stud[:marks] >= 35
  		break
  	 end
  	end
  	@result
  end
end

