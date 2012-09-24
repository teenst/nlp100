#!/usr/env/bin ruby
# -*- coding: utf-8 -*-


require "pp"


while line = gets
  if line =~ /TEXT: (.*なう$)/
    puts $1
  end
end
