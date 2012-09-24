#!/usr/env/bin ruby

col1 = open("col1.txt","w")
col2 = open("col2.txt","w")

data = Array.new
while line = gets
  data = line.split("\t")
  col1.puts(data[0])
  col2.puts(data[1])
end

