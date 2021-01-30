# internal map iterator work
class CustomArray < Array
  def map
    result_map = []
    return "no data" unless block_given?
    self.each{|num| result_map << yield(num)}
    result_map
  end
end

result = [1,2,3,4].map{|num| num+1}
p result