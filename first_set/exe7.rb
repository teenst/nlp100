#!/usr/env/bin ruby

require "pp"
data = Array.new
words = Hash.new(0)
while line = gets
  data = line.split("\t")
  words[data[0]] += 1
end

pp words.length
