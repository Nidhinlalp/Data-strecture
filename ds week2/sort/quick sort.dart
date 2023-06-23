int partition(List<int> array, int lb, int ub) {
  int temp1 = 0;
  int temp2 = 0;
  int pivot = array[lb];
  int start = lb;
  int end = ub;
  while (start < end) {
    while (array[start] <= pivot) {
      start++;
    }
    while (array[end] > pivot) {
      end--;
    }
    if (start < end) {
      temp1 = array[start];
      array[start] = array[end];
      array[end] = temp1;
    }
  }
  temp2 = array[lb];
  array[lb] = array[end];
  array[end] = temp2;
  return end;
}

void quicksort(List<int> array, int lb, int ub) {
  if (lb < ub) {
    int loc = partition(array, lb, ub);
    quicksort(array, lb, loc - 1);
    quicksort(array, loc + 1, ub);
  }
}

void main() {
  List<int> numbers = [7, 6, 10, 5, 9, 2, 1, 15];
  print('Before sorting:$numbers');
  quicksort(numbers, 0, 7);
  print('After sorting:$numbers');
}

// void main() {
//   // Create a list of numbers
//   List<int> numbers = [7, 6, 10, 5, 9, 2, 1, 15];

//   // Print the list before sorting
//   print('Before sorting: $numbers');

//   // Sort the list using the quickSort function
//   quickSort(numbers, 0, numbers.length - 1);

//   // Print the list after sorting
//   print('After sorting: $numbers');
// }

// void quickSort(List<int> array, int low, int high) {
//   // Base case: If the subarray has less than 2 elements, it is already sorted
//   if (low < high) {
//     // Find the partitionIndex which separates the subarray into two halves
//     int partitionIndex = partition(array, low, high);

//     // Sort the left subarray (elements smaller than the partition element)
//     quickSort(array, low, partitionIndex - 1);

//     // Sort the right subarray (elements greater than the partition element)
//     quickSort(array, partitionIndex + 1, high);
//   }
// }

// int partition(List<int> array, int low, int high) {
//   // Select the last element as the pivot element
//   int pivot = array[high];

//   // Initialize a variable to keep track of the index of the smaller element
//   int i = low - 1;

//   // Iterate through the subarray from low to high - 1
//   for (int j = low; j < high; j++) {
//     // If the current element is smaller than the pivot
//     if (array[j] < pivot) {
//       // Increment the index of the smaller element
//       i++;

//       // Swap the elements at indices i and j
//       swap(array, i, j);
//     }
//   }

//   // Swap the pivot element with the element at index i + 1
//   swap(array, i + 1, high);

//   // Return the index of the pivot element
//   return i + 1;
// }

// void swap(List<int> array, int i, int j) {
//   // Swap the elements at indices i and j in the array
//   int temp = array[i];
//   array[i] = array[j];
//   array[j] = temp;
// }


