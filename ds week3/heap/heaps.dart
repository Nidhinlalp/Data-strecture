void heapSort(List<int> arr) {
  int n = arr.length;

  // Build max heap
  for (int i = (n ~/ 2) - 1; i >= 0; i--) {
    heapify(arr, n, i);
  }

  // Extract elements one by one from the heap
  for (int i = n - 1; i > 0; i--) {
    // Swap the root (maximum element) with the last element
    int temp = arr[0];
    arr[0] = arr[i];
    arr[i] = temp;

    // Heapify the reduced heap
    heapify(arr, i, 0);
  }
}

void heapify(List<int> arr, int heapSize, int rootIndex) {
  int largest = rootIndex; // Initialize largest as root
  int leftChild = 2 * rootIndex + 1;
  int rightChild = 2 * rootIndex + 2;

  // Check if left child is larger than root
  if (leftChild < heapSize && arr[leftChild] > arr[largest]) {
    largest = leftChild;
  }

  // Check if right child is larger than the current largest
  if (rightChild < heapSize && arr[rightChild] > arr[largest]) {
    largest = rightChild;
  }

  // If the largest is not the root, swap and heapify the affected subtree
  if (largest != rootIndex) {
    int temp = arr[rootIndex];
    arr[rootIndex] = arr[largest];
    arr[largest] = temp;

    heapify(arr, heapSize, largest);
  }
}
