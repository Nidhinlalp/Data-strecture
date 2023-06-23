// void mergeSort(List<int> a, int lb, int ub) {
//   if (lb < ub) {
//     int mid = ((lb + ub) ~/ 2);
//     mergeSort(a, lb, mid);
//     mergeSort(a, mid + 1, ub);
//     merge(a, lb, mid, ub);
//   }
// }

// void merge(List<int> a, int lb, int mid, int ub) {
//   int i = lb;
//   int j = mid + 1;
//   int k = lb;
//   List<int> b = List<int>.filled(ub + 1, 0);

//   while (i <= mid && j <= ub) {
//     if (a[i] < a[j]) {
//       b[k] = a[i];
//       i++;
//     } else {
//       b[k] = a[j];
//       j++;
//     }
//     k++;
//   }

//   while (i <= mid) {
//     b[k] = a[i];
//     i++;
//     k++;
//   }

//   while (j <= ub) {
//     b[k] = a[j];
//     j++;
//     k++;
//   }

//   for (int x = lb; x <= ub; x++) {
//     a[x] = b[x];
//   }
// }

// void main() {
//   List<int> numbers = [23, 43, 54, 756, 67, 2, 5, 8, 6];
//   int lb = 0;
//   int ub = numbers.length - 1;
//   print('Before sorting:$numbers');
//   mergeSort(numbers, lb, ub);
//   print('After sorting:$numbers');
// }

// List<int> mergeSort(List<int> numbers) {
//   if (numbers.length <= 1) {
//     return numbers;
//   }

//   // Divide the list into two halves
//   int middleIndex = numbers.length ~/ 2;
//   List<int> leftHalf = numbers.sublist(0, middleIndex);
//   List<int> rightHalf = numbers.sublist(middleIndex);

//   // Recursively sort each half
//   leftHalf = mergeSort(leftHalf);
//   rightHalf = mergeSort(rightHalf);

//   // Merge the sorted halves
//   return merge(leftHalf, rightHalf);
// }

// List<int> merge(List<int> left, List<int> right) {
//   List<int> merged = [];

//   while (left.isNotEmpty && right.isNotEmpty) {
//     if (left.first <= right.first) {
//       merged.add(left.removeAt(0));
//     } else {
//       merged.add(right.removeAt(0));
//     }
//   }

//   // Add any remaining elements from left and right lists
//   merged.addAll(left);
//   merged.addAll(right);

//   return merged;
// }

// void main() {
//   List<int> numbers = [9, 5, 1, 3, 8, 4, 2, 7, 6];
//   List<int> sortedNumbers = mergeSort(numbers);
//   print(sortedNumbers); // Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]
// }

List<int> mergeSort(List<int> numbers) {
  // Base case: If the list has 0 or 1 element, it is already sorted
  if (numbers.length <= 1) {
    return numbers;
  }

  // Divide the list into two halves
  int middleIndex = numbers.length ~/ 2;
  List<int> leftHalf = numbers.sublist(0, middleIndex);
  List<int> rightHalf = numbers.sublist(middleIndex);

  // Recursively sort each half
  leftHalf = mergeSort(leftHalf);
  rightHalf = mergeSort(rightHalf);

  // Merge the sorted halves
  return merge(leftHalf, rightHalf);
}

List<int> merge(List<int> left, List<int> right) {
  List<int> merged = [];
  int leftIndex = 0;
  int rightIndex = 0;

  // Compare elements from left and right lists and merge them in sorted order
  while (leftIndex < left.length && rightIndex < right.length) {
    if (left[leftIndex] <= right[rightIndex]) {
      merged.add(left[leftIndex]);
      leftIndex++;
    } else {
      merged.add(right[rightIndex]);
      rightIndex++;
    }
  }

  // Add remaining elements from left list
  while (leftIndex < left.length) {
    merged.add(left[leftIndex]);
    leftIndex++;
  }

  // Add remaining elements from right list
  while (rightIndex < right.length) {
    merged.add(right[rightIndex]);
    rightIndex++;
  }

  return merged;
}

void main() {
  List<int> numbers = [9, 5, 1, 3, 8, 4, 2, 7, 6];
  List<int> sortedNumbers = mergeSort(numbers);
  print(sortedNumbers); // Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]
}
