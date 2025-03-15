
def method_three
100.times do|num|
square = num * num
return num, square if square > 1000
end
end

# this while

def method_three
  num = 1
  while true   |num|
    square = num * num
     puts num, square if square > 1000000
     break  if square > 1000000
    num +=1 
  end
end

 method_three