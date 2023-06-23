void main() {
  List<dynamic> array = [2, 3, 1, 3, 2];
  int temp1 = 0;
  int temp2 = 0;
  int count = 0;
  int n = array.length;
  for (int i = 0; i < n - 1; i++) {
    int freq = 0;
    for (int j = i + 1; j < n - 1; j++) {
      temp1 = array[j];
      array[j] = array[j + 1];
      array[j + 1] = temp1;

      if (array[i] == array[j] && i != j) {
        freq++;
        count = freq;
        if (array[j + 1] > array[j] && freq == count) {
          temp2 = array[j + 1];
          array[j + 1] = array[j];
          array[j] = temp2;
        }
      }
    }
  }
  print(array);
}
