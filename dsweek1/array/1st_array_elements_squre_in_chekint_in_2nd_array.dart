void main() {
  List<int> array1 = [2, 1];
  List<int> array2 = [4, 1];
  int count = 0;
  for (int i = 0; i < array1.length; i++) {
    for (int j = 0; j < array2.length; j++) {
      if (array1[i] * array1[i] == array2[j]) {
        count++;
        break;
      }
    }
  }
  if (count == array1.length) {
    print('true');
  } else {
    print('fasle');
  }
}
