def anagram(s)
  half1 = s.slice(0, s.length/2)
  half2 = s.slice(s.length/2, s.length)
    return -1 unless(s.length % 2 == 0)
  for i in 0..half1.length - 1 do
      half2.sub!(half1[i], "") if half2.include?(half1[i])
  end
    return 0 if half1[i] == half2[i]
    return half2.length
end