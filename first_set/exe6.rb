#!/usr/env/bin ruby
require "pp"
num = ARGV[0].to_i
tmp = Array.new(num)

while line = STDIN.gets
  tmp.push(line)
  tmp.shift
end

puts tmp.join("")


