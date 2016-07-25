# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

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

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:

puts "Testing your code for SimpleCalculator..."

calculator = WhizBangCalculator.new

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

if calculator.hypotenuse(3, 4) == 5
  puts "Pass!"
else
  puts "F!"
end

if calculator.exponent(2, 3) == 8
  puts "Pass!"
else
  puts "F!"
end


