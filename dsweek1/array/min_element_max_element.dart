// void findMinMax(List<int> array) {
//   if (array.isEmpty) {
//     print("The array is empty.");
//     return;
//   }

//   int minElement = array[0];
//   int maxElement = array[0];

//   for (int i = 1; i < array.length; i++) {
//     if (array[i] < minElement) {
//       minElement = array[i];
//     }

//     if (array[i] > maxElement) {
//       maxElement = array[i];
//     }
//   }

//   print("Minimum Element: $minElement");
//   print("Maximum Element: $maxElement");
// }

// void main() {
//   List<int> array = [7, 3, 9, 2, 5, 1, 8, 6, 4];
//   findMinMax(array);
// }

void finmiandmax(List<int> array) {
  if (array.isEmpty) {
    print('array is empty');
    return;
  }
  int min = array[0];
  int max = array[0];
  for (var i = 1; i < array.length; i++) {
    if (array[i] < min) {
      min = array[i];
    }
    if (array[i] > max) {
      max = array[i];
    }
  }
  print(min);
  print(max);
}

void main() {
  List<int> array = [7, 3, 9, 2, 5, 1, 8, 6, 4];

  finmiandmax(array);
}
