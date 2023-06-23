class MinHeap {
  List<int> heap = [];

  void buildHeap(List<int> array) {
    heap = List.from(array);
    for (int i = parent(heap.length - 1); i >= 0; i--) {
      shiftDown(i);
    }
  }

  void shiftDown(int currentIndex) {
    int leftIdx = leftChild(currentIndex);
    while (leftIdx < heap.length) {
      int rightIdx = rightChild(currentIndex);
      int idxToShift = leftIdx;
      if (rightIdx < heap.length && heap[rightIdx] < heap[leftIdx]) {
        idxToShift = rightIdx;
      }
      if (heap[currentIndex] > heap[idxToShift]) {
        swap(currentIndex, idxToShift);
        currentIndex = idxToShift;
        leftIdx = leftChild(currentIndex);
      } else {
        return;
      }
    }
  }

  void shiftUp(int currentIndex) {
    int parentIndex = parent(currentIndex);
    while (currentIndex > 0 && heap[parentIndex] > heap[currentIndex]) {
      swap(currentIndex, parentIndex);
      currentIndex = parentIndex;
      parentIndex = parent(currentIndex);
    }
  }

  void remove() {
    swap(0, heap.length - 1);
    heap.removeLast();
    shiftDown(0);
  }

  void insert(int value) {
    heap.add(value);
    shiftUp(heap.length - 1);
  }

  int parent(int i) => (i - 1) ~/ 2;

  int leftChild(int i) => (i * 2 + 1);

  int rightChild(int i) => (i * 2 + 2);

  void display() {
    for (int i = 0; i < heap.length; i++) {
      print(heap[i]);
    }
  }

  void swap(int i, int j) {
    int temp = heap[i];
    heap[i] = heap[j];
    heap[j] = temp;
  }

  List<int> heapSort() {
    List<int> sortedList = [];
    while (heap.length > 0) {
      sortedList.add(heap[0]);
      remove();
    }
    return sortedList;
  }
}

void main() {
  List<int> array = [40, 6, 2, 8];
  MinHeap heap = MinHeap();
  heap.buildHeap(array);
  heap.display();
  print('');
  heap.insert(1);
  heap.insert(5);
  heap.insert(15);
  heap.insert(3);
  heap.display();
  List<int> sortedList = heap.heapSort();
  print(sortedList);
  print('');
  heap.remove();
  heap.display();
}
