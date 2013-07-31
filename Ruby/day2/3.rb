i = 0
IO.readlines(ARGV[0]).each do |line|
  if /#{ARGV[1]}/.match(line) != nil
    puts "#{i}:#{line}"
  end
  i = i + 1
end
