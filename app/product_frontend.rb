require "http"

system "clear"
puts "Make a selection"
puts "[1]"
puts "[2]"
puts "[3]"
puts "[4]"
puts "[5]"

selection = gets.chomp
if selection == "1"
  response = HTTP.get("http://localhost:3000/products/1.json")
  card = response.parse(:json)
  pp card
elsif selection == "2"
  response = HTTP.get("http://localhost:3000/products/2.json")
  tp = response.parse(:json)
  pp tp
elsif selection == "3"
  response = HTTP.get("http://localhost:3000/products/3.json")
  all = response.parse(:json)
  pp all
end
elsif selection == "4"
  response = HTTP.get("http://localhost:3000/products/4.json")
  all = response.parse(:json)
  pp all
end
elsif selection == "5"
  response = HTTP.get("http://localhost:3000/products.json")
  all = response.parse(:json)
  pp all
end