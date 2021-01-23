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

  # using class varaible array of hash to to check student pass or fail based on name passed by user
  def check_mark_by_name(name)
  	@@class_student.each do |stud|
   	 if stud[:name] == name
  		@result = "pass" if stud[:marks] >= 35
  		break
  	 end
  	end
  	@result
  end

  # with switch case
  def check_marks_by_use_case
    @@class_student.map do |stud|
   	 if stud[:name] == name
   	 	marks = stud[:marks] 
   	 	case marks
   	    when marks > 80
   	      "A"
   	    when  marks >= 60 && marks < 80
   	      "B"	
   	    when  marks >= 40 && marks < 60
   	      "C"
  	    else
  	 	  "D"		
  	    end
  	 end	
   end
  end

  # update percentage
  def update_percentage
    @@class_student.each do |stud|
      stud[:percentage] = (stud[:marks]*100)/100
    end
  end

  # Calculate the first n prime numbers. Skip if the number ends with 7
  def calculate_prime(n)
  	prime_array = []
  	value = 1
  	while prime_array.length < n do
     prime_array.push(value) if value % 2 != 0 && value % 10 != 7
     value = value+1
    end
   return prime_array
  end

end

