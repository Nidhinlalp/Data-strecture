void main() {
  List<int> array = [3, 2, 3, 4, 5, 4, 6, 4, 4];

  int k = 0;
  for (int i = 0; i < array.length - 1; i++) {
    int count = 1;
    for (int j = i + 1; j < array.length; j++) {
      if (array[i] == array[j]) {
        count++;
        if (count >= array.length ~/ 2) {
          k = array[i];
        }
      }
    }
  }
  print(k);
}
