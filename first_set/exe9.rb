#!/usr/env/bin ruby

require "pp"

list = []
while line = gets
  data = line.split("\t")
  data[1].chomp!
  list.push(data)
end

list = list.sort{|a,b|
    (b[1] <=> a[1]).nonzero? ||b[0] <=>a[0]
}

list.each {|elem|
  puts "#{elem[0]} #{elem[1]}"
}
