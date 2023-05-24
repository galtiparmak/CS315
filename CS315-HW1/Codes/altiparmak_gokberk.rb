def foo(arr)
    arr.each do |key, value|   
    puts "Key: #{key} Value: #{value}\n" end
    puts "------\n"
  end
  
  capitals = {
    "Turkey" => "Istanbul",
    "Germany" => "Berlin"
  }
  
  puts capitals['Turkey']
  foo capitals
  capitals["Italy"] = "Rome"
  foo capitals
  capitals.delete("Germany")
  foo capitals
  capitals["Turkey"] = "Ankara"
  foo capitals
  puts capitals.has_key?("Turkey")
  puts capitals.has_value?("Ankara")
  puts "------\n"
  foo capitals