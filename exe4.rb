#!/usr/env/bin ruby

col1 = open("col1.txt","r")
col2 = open("col2.txt","r")

col1.each do |i|
  j = col2.gets
  i.gsub!("\n","")
  print i + "\t" +j
end

col1.close
col2.close

