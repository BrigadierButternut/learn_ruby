#write your code here

def ftoc(degF)
  #converting from fahrenheit to celsius using basic equation; note that all
  #numbers featured are floats
  Float((degF-32.0)*(5.0/9.0))
end

def ctof(degC)
  Float(degC*(9.0/5.0)+32.0)
