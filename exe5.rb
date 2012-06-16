#!/usr/env/bin ruby

num = ARGV[0].to_i
i = 0
while line = STDIN.gets
  if i < num
    print line
  end
  i = i + 1
end

