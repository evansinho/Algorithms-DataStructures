def repeatedString(s, n)
    if s.length == 1 && s[0] == 'a'
        n
     else
        found = s.count('a')
        whole = n / s.length
        remainder = n % s.length
        count = (found * whole) + s[0...remainder].count('a')
        count
     end
end