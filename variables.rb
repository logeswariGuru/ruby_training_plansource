$global_val = 10
class Variable 
 @@class_val = 20
 def initialize(value)
  @instance_value = value
 end
 def display(value)
  local_value = value
  @sum = local_value+@instance_value+@@class_val+$global_val
  @sum
 end
end
obj = Variable.new(10)
obj.display(10)