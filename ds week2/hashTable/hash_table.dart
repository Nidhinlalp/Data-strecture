import 'dart:collection';

void main() {
  HashMap<String, String> myHashMap = HashMap<String, String>();

  // Insertion
  myHashMap['key1'] = 'value1';
  myHashMap['key2'] = 'value2';
  myHashMap['key3'] = 'value3';

  // Search
  String? value1 = myHashMap['key1'];
  print('Value for key1: $value1');

  String? value4 = myHashMap['key4'];
  print('Value for key4: $value4');

  // Deletion
  myHashMap.remove('key2');

  // Traversal
  myHashMap.forEach((key, value) {
    print(': $value');
  });
}
