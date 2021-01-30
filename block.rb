# block
# def test(&block)
#   block.call(5)
# end
# test { |n| puts n*2}
#
# def test
#   p "test"
#   my_proc = Proc.new{return 2}
#   my_proc.call
#   p "after"
# end
#test
# proc
#
# proc = Proc.new{|n|  n*2}
# [1,2,3,4].each{ |num| p proc.call(num)}


# proc.call


# Lamda
# say_somthing = ->(n) {n*2}
# p [1,2,3,4].map{ |num|  num = say_somthing.call(num)}
#
# my_proc = Proc.new { return 1 }
# puts "Proc result: #{my_proc.call}"
my_lambda = -> { return 1 }
puts "Lambda result: #{my_lambda.call}"

# my_lambda = -> { return 1 }
# puts "Lambda result: #{my_lambda.call}"

# lam = -> {2*2}
# p lam.call


