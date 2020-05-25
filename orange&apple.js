function countApplesAndOranges(s, t, a, b, apples, oranges) {
  let appleCount = apples.filter(val => val + a >= s && val + a <= t).length;
  let orangeCount = orange.filter(val => val + b >= s && val + b <= t).length;

  console.log(appleCount);
  console.log(orangeCount);
}