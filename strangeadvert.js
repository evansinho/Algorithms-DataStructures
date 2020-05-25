function viralAdvertising(n) {
  let shared = 5,
    like = 0,
    totalLikes = 0;
  for (let i = 1; i <= n; i++) {
    like = Math.floor(shared / 2);
    shared = like * 3;
    totalLikes += like;
  }
  return totalLikes;
}