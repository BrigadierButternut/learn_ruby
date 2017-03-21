#write your code here

def add(num1, num2)
  num1+num2
end

def subtract(num1, num2)
  num1-num2
end

def sum(values)
  total_sum = 0
  values.each do |value|
    total_sum += value
  end
total_sum
end

def multiply(values)
  product = 1
  values.each do |value|
    product *= value
  end
  product
end

def power(base,power)
  product = base**power
end

def factorial(value)
  take = 1
  product = value
  while take < value
    product *= value - take
    take += 1
  end
  if value == 0
    product = 1
  end
  product
end
