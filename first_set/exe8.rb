#!/usr/env/bin ruby

require "pp"

list = []
while line = gets
  data = line.split("\t")
  data[1].chomp!
  list.push(data)
end

list = list.sort{|a,b|
  a[1] <=> b[1]
}

list.each {|elem|
  puts "#{elem[0]} #{elem[1]}"
}
