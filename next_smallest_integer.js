function solution(A) {
    const len = A.length;
    const hash = {};
    for (let i = 0; i < len; i++) {
        // here we are making an object with all 
        // numbers in a given array as object keys and values
        // if 0 is given as possible digit we could assing 
        // hash[A[i]] = true; or any truthy value
        hash[A[i]] = A[i];
    }
    for (let i = 1; i < 1000002; i++) {
        // here we are trying to find any number 
        // between 1 and 1000001 (given constraints) 
        // which do not exists in an object
        // if the number is not in the object that's our missing one
        if(!hash[i]) return i;
    }
    return 1;
}