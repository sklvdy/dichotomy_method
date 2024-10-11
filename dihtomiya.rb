#given function

def func(x)
  f = 7.22*x**5-4*x**2+10.7*x-100.2
  return f
end

a = gets.to_f
b = gets.to_f
eps = 0.000001

while (b - a).abs >= eps
  c = (a + b)/2.to_f
  if func(a)*func(b) < 0
    if func(a)*func(c) < 0
      b = c
    else
      a = c
    end
  else 
    puts "the root of the equation does not exist in a given segment"
    break
  end
  if (b - a).abs < eps
    puts c.to_f
    puts func(c)
    break
  end
end