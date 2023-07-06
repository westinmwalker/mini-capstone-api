require "http"

system "clear"
puts "Make a selection"
puts "[1]"
puts "[2]"
puts "[3]"

selection = gets.chomp
if selection == "1"
  response = HTTP.get("http://localhost:3000/one_product.json")
  card = response.parse(:json)
  pp card
elsif selection == "2"
  response = HTTP.get("http://localhost:3000/two_product.json")
  tp = response.parse(:json)
  pp tp
elsif selection == "3"
  response = HTTP.get("http://localhost:3000/all_products.json")
  all = response.parse(:json)
  pp all
end
