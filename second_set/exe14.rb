#!/usr/env/bin ruby
# -*- coding: utf-8 -*-

require "pp"

name = []
while line = gets
  if line.index(/^TEXT:/)
    name += line.scan(/(@\w+)/)
  end
end
pp name.flatten!.uniq!











