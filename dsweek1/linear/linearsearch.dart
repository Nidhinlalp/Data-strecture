// int linearsearch(List<int> list, int target) {
//   for (int i = 0; i < list.length; i++) {
//     if (list[i] == target) {
//       return i;
//     }
//   }
//   return -1;
// }

// void main() {
//   List<int> numbers = [10, 20, 30, 40, 50];
//   int target = 20;
//   int result = linearsearch(numbers, target);
//   if (result == -1) {
//     print("Element not found");
//   } else {
//     print("element found at position$result");
//   }
// }

// int linearsearch(List<int> list, int target) {
//   for (int i = 0; i < list.length; i++) {
//     if (list[i] == target) {
//       return i;
//     }
//   }
//   return -1;
// }

// void main() {
//   List<int> array = [10, 20, 30, 40, 50, 60];
//   int element = 40;
//   int result = linearsearch(array, element);
//   if (result == -1) {
//     print("element not found");
//   } else {
//     print("element found at position $result");
//   }
// }

// int linearsearch(List<int> list, int value) {
//   for (int i = 0; i < list.length; i++) {
//     if (list[i] == value) {
//       return i;
//     }
//   }
//   return -1;
// }

// void main() {
//   List<int> array = [20, 20, 30, 40];
//   int number = 20;
//   int result = linearsearch(array, number);
//   print(result + 1);
// }

linearSearch(List<int> array, int number) {
  for (var i = 0; i < array.length; i++) {
    if (array[i] == number) {
      return i;
    }
  }
  return -1;
}

void main(List<String> args) {
  List<int> array = [1, 2, 3, 3, 4, 5];
  int number = 3;
  final int result = linearSearch(array, number);
  print(result + 1);
}
