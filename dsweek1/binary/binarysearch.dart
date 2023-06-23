// int binary(List<int> list, int value) {
//   int low = 0;
//   int high = list.length - 1;

//   while (low <= high) {
//      int mid = (low + high) ~/ 2;
//     if (list[mid] == value) {
//       return mid;
//     } else if (list[mid] <= value) {
//       low = mid + 1;
//     } else {
//       high = mid - 1;
//     }
//   }
//   return -1;
// }

// void main() {
//   List<int> list = [10, 20, 30, 40, 50];
//   int value = 30;
//   int result = binary(list, value);
//   if (result != -1) {
//     print("Element found at position $result");
//   } else {
//     print("Element not found");
//   }
// }

// int binarysearch(List<int> list, int value) {
//   int start = 0;
//   int end = list.length - 1;
//   while (start <= end) {
//     int mid = (start + end) ~/ 2;
//     if (list[mid] == value) {
//       return mid;
//     } else if (list[mid] <= value) {
//       start = mid + 1;
//     } else {
//       end = mid - 1;
//     }
//   }
//   return -1;
// }

// void main() {
//   List<int> numbers = [10, 20, 30, 40, 80];
//   int element = 40;
//   int result = binarysearch(numbers, element);
//   if (result == -1) {
//     print("element not found");
//   } else {
//     print("Element found at position ${result + 1}");
//   }
// }

int binarySearch(List<int> array, int target) {
  int low = 0;
  int high = array.length - 1;

  while (low <= high) {
    int mid = (low + high) ~/ 2;

    if (array[mid] == target) {
      return mid;
    } else if (array[mid] > target) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }

  return -1;
}

void main() {
  List<int> array = [2, 4, 6, 8, 10, 12, 14, 16, 18];
  int target = 10;

  int result = binarySearch(array, target);

  if (result != -1) {
    print("Element $target found at index $result.");
  } else {
    print("Element $target not found in the array.");
  }
}
