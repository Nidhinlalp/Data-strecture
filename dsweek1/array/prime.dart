// void main() {
//   List<int> array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
//   int count = 0;
//   for (int i = 0; i < array.length; i++) {
//     count = 0;
//     for (int j = 2; j < array[i]; j++) {
//       if (array[i] % j == 0) {
//         count++;
//         break;
//       }
//     }
//     if (count == 0) {
//       print(array[i]);
//     }
//   }
// }

void main() {
  List<int> numbers = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  List<int> primeNumbers = [];

  for (int i = 0; i < numbers.length; i++) {
    bool isPrime = true;

    if (numbers[i] <= 1) {
      isPrime = false;
    } else {
      for (int j = 2; j <= numbers[i] / 2; j++) {
        if (numbers[i] % j == 0) {
          isPrime = false;
          break;
        }
      }
    }

    if (isPrime) {
      primeNumbers.add(numbers[i]);
    }
  }

  print('Prime numbers in the array: $primeNumbers');
}





// bool isPrime(int number) {
//   if (number <= 1) {
//     return false;
//   }

//   for (int i = 2; i <= number / 2; i++) {
//     if (number % i == 0) {
//       return false;
//     }
//   }

//   return true;
// }

// List<int> findPrimes(List<int> numbers) {
//   List<int> primes = [];

//   for (int number in numbers) {
//     if (isPrime(number)) {
//       primes.add(number);
//     }
//   }

//   return primes;
// }

// void main() {
//   List<int> numbers = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];

//   List<int> primeNumbers = findPrimes(numbers);
//   print("Prime numbers in the array: $primeNumbers");
// }

