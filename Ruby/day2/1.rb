require 'pp'

puts "Whith each()"
ndx = [] 
(1..16).each do |i|
  ndx << i
  if ndx.size == 4
    pp ndx
    ndx = []
  end
end

puts "With each_slice()"
(1..16).each_slice(4) { |i| pp i }
