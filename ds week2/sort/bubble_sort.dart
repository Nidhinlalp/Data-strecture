// void Bubblesort(List<int> array) {
//   for (int i = 0; i < array.length-1; i++) {
//     for (int j = 0; j < array.length-i-1; j++) {
//       if (array[j] > array[j + 1]) {
//         int temp = array[j];
//         array[j] = array[j + 1];
//         array[j+1] = temp;
//       }
//     }
//   }
// }

// void main() {
//   List<int> array = [2, 5, 8, 2, 3, 1, 6, 4];
//   print('Before sorting:$array');
//   Bubblesort(array);
//   print('After sorting:$array');

// }

void bubblesort(List<int> array) {
  int temp = 0;
  for (int i = 0; i < array.length - 1; i++) {
    for (int j = 0; j < array.length - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
}

void main() {
  List<int> numbers = [2, 5, 3, 5, 9, 1, 36, 1];
  print('before sorting:$numbers');
  bubblesort(numbers);
  print('After sorting:$numbers');
}
