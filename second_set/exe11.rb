#!/usr/env/bin ruby
# -*- coding: utf-8 -*-

#(11) 「拡散希望」という文字列を含むツイートを抽出せよ．

require "pp"


while line = gets
  if line =~ /TEXT: (.*拡散希望.*)/
    puts $1
  end
end
