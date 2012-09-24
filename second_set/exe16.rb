#!/usr/env/bin ruby
# -*- coding: utf-8 -*-

#(16) 括弧表現のうち，括弧の内側がアルファベット大文字の文字列，括弧の左側が漢字の文字列のものを抽出せよ．このとき，括弧の左側の表現と括弧の内側の表現をタブ区切り形式で出力せよ．

require "pp"


while line = gets
  if line =~ /TEXT: .*(\p{Han}+)\(([A-Z]+?)\)/
    print "#{$1}\t#{$2}\n"
  end
end
