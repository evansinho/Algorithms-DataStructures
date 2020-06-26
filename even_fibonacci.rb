def get_even_fibonacci(n)
  arr = [1, 2]
  c = 2
  while arr[c-1] + arr[c-2] <= n
    arr[c]= arr[c-1] + arr[c-2]
      c+=1
  end
  p arr.reduce(0){ |acc, val| val%2===0 ? acc + val : acc}
end