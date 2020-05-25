function hurdleRace(k, height) {
  console.log(height);
  let maxCount = 0;
  for (let i = 0; i < height.length; i++) {
    if (height[i] > k) {
      let diff = height[i] - k;
      if (diff > maxCount) {
        maxCount = diff;
      }
    }
  }
  if (maxCount === 0) {
    return 0;
  }
  return maxCount;
}