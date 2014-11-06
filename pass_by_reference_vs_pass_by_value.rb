# def some_method(obj)
#   obj.uniq 
# end
  
# outer_obj = [1, 2, 2, 3, 3]
# some_method(outer_obj)  
  
# puts outer_obj
  
# Calling a method that does not mutate the caller
def safe_method(obj)
  obj.bsearch {|x| x > 4 } 
end
    
arr_one = [1, 2, 3, 4, 5, 6, 7, 8, 9]
puts "Before the 'bsearch' method is called, the value of 'arr_one' is #{arr_one}."
puts "\n"
puts "Let's call the method:"
p safe_method(arr_one)
puts "\n"  
puts"After the 'bsearch' method is called, the value of 'arr_one' is #{arr_one}."
puts "The 'bsearch' method is non-destructive."
puts "\n"
puts "------------"
puts "\n"
# calling a method that mutates the caller within the method

def unsafe_method(obj)
  obj.clear
end
  

arr_two = [2, 4, 6, 8, 10]
puts "Before the 'clear' method is called, the value of 'arr_two' is #{arr_two}."
puts "\n"
puts "Let's call the method:"
p unsafe_method(arr_two)
puts "\n"
puts "After the 'clear' method is called, the value of 'arr_two' is #{arr_two}."
puts "The 'clear' method is destructive."
