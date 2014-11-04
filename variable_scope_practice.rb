# Lesson 1 Variable scope practice

# changing a variable from within an inner scope
  name = "Jack"
  arr_one = [2, 4, 6, 8]
  
  arr_one.each do |e|
    puts e + 1
    name = "Ted"
    age = 22
  end
        
  puts name 
        
  # calling age outside of the method will cause an error:
  # puts age
        
  ## Calling a method that doesn't mutate the caller from within an inner scope
  dup_arr = [1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
  puts "the original value of dup_arr is #{dup_arr}."
  
  inner_block = dup_arr.each do |m|
    dup_arr.uniq
  end
    
  puts "After calling the 'uniq' method, dup_arr is still #{dup_arr}"
  
  ## Calling a method that mutates the caller from within an inner scope
  dup_arr = [1, 2, 3, 4, 5, 1, 2, 3, 4, 5]
  
  inner_block = dup_arr.each do |m|
    dup_arr.uniq!
  end
    
  puts "After calling the 'uniq!' method, dup_arr is now #{dup_arr}"
