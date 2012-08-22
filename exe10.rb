#!/usr/env/bin ruby

require "pp"

lists =Hash.new(0)

while line = gets
  line.chomp!
  lists[line] += 1
end

lists = lists.sort{|a,b|
  b[1]<=>a[1]
}

lists.each{ |elem|
  puts elem[0]
}
