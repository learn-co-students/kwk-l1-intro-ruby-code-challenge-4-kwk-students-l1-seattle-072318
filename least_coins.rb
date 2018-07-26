puts "Welcome to your least coin calculator! Please enter a number of cents."
cents = gets.strip
cents = cents.to_i
def least_coins(cents)
  coins = {
    :quarters => 0 ,
    :dimes =>0 ,
    :nickles => 0 ,
    :pennies => 0 
  }
  #quarters
while cents >= 25
    coins[:quarters] += 1 
    cents = cents - 25
  end
 #dimes
while cents >= 10 
  coins[:dimes] += 1 
  cents = cents - 10
end
  #nickles
while cents >= 5 
  coins[:nickles] += 1 
  cents = cents - 5 
end 
 #pennies
coins[:pennies] = cents
puts coins
end

puts least_coins(cents)