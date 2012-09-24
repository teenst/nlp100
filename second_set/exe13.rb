#!/usr/env/bin ruby
# -*- coding: utf-8 -*-


require "pp"


while line = gets
  if line =~ /TEXT: .+RT @\w+:/
    puts $1 if line =~ /TEXT: ([^R].+?)RT @\w+:/
  end
end











