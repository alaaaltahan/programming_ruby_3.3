def power_proc_generator
    value = 1
    -> {value += value}
end

power_proc = power_proc_generator

puts power_proc.call
puts power_proc.call
puts power_proc.call
puts power_proc.call