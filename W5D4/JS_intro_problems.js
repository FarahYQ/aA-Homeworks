

// fizzBuzz
function fizzBuzz(array) {
  let result = []
  array.forEach(function(el) {
    if (el % 3 === 0 || el % 5 === 0)
      // unless (el % 3 === 0 && el % 5 == 0 )
      result.push(el);
  })
  return result
}

console.log(fizzBuzz([1,2,3,4,5]));


// isSubstring
function isSubstring(string, sub) {
  string.split(' ').forEach(function(word) {
    if (word === sub)
      return true;
  })
  return false;
}

console.log(isSubstring("time to program", "time"));

function madLib(string1, string2, string3) {
  return `We shall ${string1.UpperCase()} the ${string2.UpperCase()} ${string3.UpperCase()}`;
}

console.log(madLib('make', 'best', 'guac'));
