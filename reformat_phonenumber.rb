R = /\d{2,3}(?=\d{2,3}|\z)/

# R = /
#     \d{2,3}   # match 2 or 3 digits (greedily)
#     (?=       # begin positive lookahead
#       \d{2,3} # match 2 or 3 digits 
#       |       # or
#       \z      # match the end of the string
#     )         # end positive lookahead
#     /x        # free-spacing regex definition mode

def solution(s)
  str = s.gsub(/\D/,'')
  return str if str.size < 4
  str.scan(R).join('-')
end
