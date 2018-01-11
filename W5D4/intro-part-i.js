// Phase I
function madLib(verb, adjective, noun) {
  return `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`;
}

console.log(madLib('make', 'best', 'guac'));

function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}

console.log(isSubstring("time to program", "time"));
console.log(isSubstring("Jump for joy", "joys"));

// Phase II 
function fizzBuzz(array) {
  fizzArr = []
  array.forEach(function(element) {
    if (element % 15 === 0) {
      return;
    } else if (element % 3 === 0) {
      fizzArr.push(element);
    } else if (element % 5 === 0) {
      fizzArr.push(element);
    } else {
      return;
    }
  });
  return fizzArr;
}

console.log(fizzBuzz([1, 2, 3, 4, 5, 6, 9, 15, 20]));

function isPrime(number) {
  if (number < 2) {
    return false;
  }
  for (let i = 2; i < number; i++) {
    if (number % i === 0) {
      return false;
    }
  }
  return true;
}

console.log(isPrime(2)); // true
console.log(isPrime(10)); // false
console.log(isPrime(15485863)); // true
console.log(isPrime(3548563)); // false

function sumOfNPrimes(n) {
  let sum = 0;
  let countPrimes = 0;
  let i = 2;

  while (countPrimes < n) {
    if (isPrime(i)) {
      sum += i;
      countPrimes++;
    }
    i++;
  }

  return sum;
}

console.log(sumOfNPrimes(0)); // 0

console.log(sumOfNPrimes(1)); // 2

console.log(sumOfNPrimes(4)); // 17