puts "--- each1 ---"
numbers = (1..5).to_a
numbers.each do |number|
    print number, " "
end

puts "\n--- each2 ---"
colors = ["red", "green", "blue"]
colors.each {|color|
    print color, " "
}

puts "\n--- for (原則使わない)---"
for number in numbers do
    print number, " "
end

puts "\n--- hash.each ---"
scores = {luke: 100, jack: 90, rober:70}
scores.each do |key, score|
    puts "#{key}, #{score}"
end

puts "--- times ---"
num = 5
num.times do |i|
    print "Hello! "
end

puts "\n--- while ---"
i = 0
while (i < 10) do
    print "#{i} "
    i += 1
end

puts "\n--- upto & downto ---"
starts = 10
ends = 14
starts.upto(ends){ |n|
    print "#{n} "
    if (n == ends)
        puts ""
    end
}
ends.downto(starts){ |n|
    print "#{n} "
}

puts "\n--- step ---"
starts = 1
ends = 10
steps = 2
starts.step(ends, steps){|n|
    print "#{n} "
    if (ends - n < steps)
        puts ""
    end
}
ends.step(starts, -steps){|n|
    print "#{n} "
}

puts "\n--- loop & break ---"
i = 0
loop do
    print "#{i} "
    i += 1
    break if (i > 9)
end

puts "\n--- each & next ---"
numbers = (1..5)
numbers.each do |number|
    next if number.even?
    print "#{number} "
end

puts ""