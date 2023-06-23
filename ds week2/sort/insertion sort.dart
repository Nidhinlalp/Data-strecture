void insertionSort(List<int> arr) {
  int n = arr.length;

  for (int i = 1; i < n; i++) {
    int temp = arr[i];
    int j = i - 1;

    while (j >= 0 && arr[j] > temp) {
      arr[j + 1] = arr[j];
      j--;
    }

    arr[j + 1] = temp;
  }
}

void main() {
  List<int> numbers = [9, 8, 7, 6, 5];
  print('Original array: $numbers');

  insertionSort(numbers);

  print('Sorted array: $numbers');
}
