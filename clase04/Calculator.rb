class Calculator
  def add(a, b)
    a + b
  end

  def substract(a, b)
    a - b
  end

  def multiply(a, b)
    a * b
  end

  def is_zero(a)
    a == 0    
  end

  def divition(a, b)
    is_zero(b) ? 0 : a / b
  end
end