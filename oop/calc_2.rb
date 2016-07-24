# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)
module SimpleCalculator

  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end

end

class FancyCalculator

  include SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end
end

# Copy your driver code from the previous exercise below:
puts "Testing your code for SimpleCalculator..."

calculator = FancyCalculator.new

if calculator.add(3, 4) == 7
  puts "Pass!"
else
  puts "F!"
end

if calculator.subtract(9, 4) == 5
  puts "Pass!"
else
  puts "F!"
end

if calculator.multiply(3, 4) == 12
  puts "Pass!"
else
  puts "F!"
end

if calculator.divide(12, 4) == 3
  puts "Pass!"
else
  puts "F!"
end

if calculator.square_root(36) == 6
  puts "Pass!"
else
  puts "F!"
end



