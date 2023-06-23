void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  print("Original array: $numbers");

  int start = 0;
  int end = numbers.length - 1;

  while (start < end) {
    int temp = numbers[end];
    numbers[end] = numbers[start];
    numbers[start] = temp;

    start++;
    end--;
  }

  print("Reversed array: $numbers");
}
