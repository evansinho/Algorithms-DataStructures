/**
 * initialize your data structure here.
 */
var MedianFinder = function() {
    this.arr = []
};

/** 
 * @param {number} num
 * @return {void}
 */
MedianFinder.prototype.addNum = function(num) {
    this.arr.push(num)
};

/**
 * @return {number}
 */
MedianFinder.prototype.findMedian = function() {
    let sort = this.arr.sort();
    let length = sort.length;
    let median = ''
    if (length % 2 == 0) {
        var firstMiddle = sort[Math.floor((length - 1) / 2)];
        var secondMiddle = sort[Math.floor(length / 2)];
        median = parseFloat(firstMiddle + secondMiddle) / 2;
        console.log(firstMiddle, secondMiddle)
    } else {
        var firstMiddle = sort[Math.floor((length - 1) / 2)];
        median = firstMiddle;
    }
    return median;
};

/** 
 * Your MedianFinder object will be instantiated and called as such:
 * var obj = new MedianFinder()
 * obj.addNum(num)
 * var param_2 = obj.findMedian()
 */