x = rand(10)

def guess(x)
  ask = gets().to_i
  if ask < x then puts "Trop petit" end
  if ask > x then puts "Trop grand" end
  ask
end
ask = guess(x) while ask != x
puts "Trouvey"
