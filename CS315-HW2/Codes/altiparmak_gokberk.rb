# Conditional exit
for i in 1..3 do
    puts "*\n"
end

# Unconditional exit(break)
x = 4
loop do
    if x == 5
        break
    end
    puts "****\n"
    x = x + 1
end

# Unconditional exit(continue)
loop do
    x = x + 1
    if x < 10
        next
    end
    puts "*********\n"
    break
end

# Enclosed loop exit
for i in 0..2 do
    for j in 0..1 do
      if i == 1 
        break
      end
      puts "j = #{j}"
    end
    puts "i = #{i}"
  end