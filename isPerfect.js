const isPerfect = (num) => {
  const allDivisors = (num) => {
    let divisors = [];
    for (let i = 2; i < num; i++) {
      if (num % i === 0) {
        divisors.push(i);
      }
    }
    divisors = divisors.filter((el, pos) => {
      return divisors.indexOf(el) == pos;
    });
    divisors.push(1);
    return divisors;
  };
  
  const sumOfDivisors = (divs) => {
    const sum = divs.reduce((a, b) => {
      return a + b;
    });
    return sum;
  };
  
  if (num === sumOfDivisors(allDivisors(num))) {
    return true;
  }
  return false;
};
