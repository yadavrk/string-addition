def add(srting_number)
  numbers = srting_number.split(/,|;|\n/).select{|i| i.to_i != 0}.map{|i| i.to_i}
  negative_numbers = numbers.select{|i| i < 0}
  raise "negative numbers not allowed #{negative_numbers.join(",")}" if !negative_numbers.empty?
  sum = 0
  numbers.each {|e| sum += e}
  sum
end

# srting_number = "1,5,-3"
# add(srting_number)
