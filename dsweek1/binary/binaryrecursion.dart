int binarysearch(List<int> list, int target) {
  if (list.isEmpty) {
    return -1;
  }

  int mid = list.length ~/ 2;
  if (list[mid] == target) {
    return mid;
  } else if (list[mid] <= target) {
     int result = binarysearch(list.sublist(mid + 1), target);
    return result == -1 ? -1 : mid + 1 + result; 
  } else {
    return binarysearch(list.sublist(0, mid), target);
  }
}

void main() {
  List<int> numbers = [10, 20, 30, 40, 50, 60];
  int number = 60;
  int result = binarysearch(numbers, number);
  if (result == -1) {
    print("element not found");
  } else {
    print("element found at position $result");
  }
}
