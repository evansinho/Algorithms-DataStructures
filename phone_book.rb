# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a, b, p)
  hash = Hash[a.zip b]

  puts hash

  count = []
  hash.each do |x, y|
     if y.include?(p)
       count << x
      end
  end

  if count.length > 0
    return count.sort[0]
  else
    return 'NO CONTACT'
  end


end
