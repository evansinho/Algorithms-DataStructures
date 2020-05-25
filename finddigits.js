function findDigits(n) {
  let num = '',
    count = 0;
  num = n.toString();
  for (let i = 0; i < num.length; i++) {
    if (num[i] != 0 && n % num[i] === 0) {
      count += 1;
    }
  }
  return count;
}