print "(t)imes or (p)lus: "
operator = gets
print "number: "
number = Integer(gets)
if operator.start_with?("t")
  calc = -> (n) { n * number}
else
  calc = -> (n) { n + number}  
end
puts ((1..10).map(&calc).join(", "))
