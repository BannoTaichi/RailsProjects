def fizz_buzz(num)
    if(num % 15 == 0)
        "FizzBuzz"
    elsif(num % 3 == 0)
        "Fizz"
    elsif(num %5 == 0)
        "Buzz"
    else
        num.to_s
    end
end

for i in 1..15 do
    puts fizz_buzz(i)
end

    