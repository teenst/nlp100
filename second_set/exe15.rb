#!/usr/env/bin ruby
# -*- coding: utf-8 -*-

require "pp"
require "zlib"


name = []
while line = gets
  if line.index(/^TEXT:/)
    name += line.scan(/(@\w+)/)
  end
end
usernames = name.flatten!.uniq!

puts "<html><body>"

usernames.each do |id|
  id.delete!("@")
  puts "<a href=\"http://twitter.com/#!/#{id}\">#{id}</a><br>"
end
puts "</body></html>"












