
def solution(s)

  new_s = s.gsub('-','')
  new_s = new_s.gsub(' ','')

  len = new_s.length
  nums = len / 3
  remainder = len % 3



  # first_slice = new_s.slice(0, nums*3)

  # puts first_slice.chars.each_slice(3).map(&:join)


   new_s.scan(/.{1,3}/).join("-")


end
