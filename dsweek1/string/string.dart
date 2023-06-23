// String reverseString(String input) {
//   String reversedString = '';
//   for (int i = input.length - 1; i >= 0; i--) {
//     reversedString = reversedString+input[i];
//   }
//   return reversedString;
// }
// void main() {
//   String originalString = 'Justin Thomas';
//   String reversedString = reverseString(originalString);
//   print(reversedString);
// }

// String reverseString(String input) {
//   String reversedstring = '';

//   for (int i = input.length; i > 0; i++) {
//     reversedstring = reversedstring + input[i];
//   }
//   return reversedstring;
// }

// void main() {
//   String originalstring = 'Nidhin Lal';
//   String reversedstring = reverseString(originalstring);
//   print(reversedstring);
// }

// String reversString(String originalstring) {
//   List<String> splited = originalstring.split('');
//   List<String> reverseChar = splited.reversed.toList();
//   String reversed = reverseChar.join('');
//   return reversed;
// }

// void main(List<String> args) {
//   final String originalstring = 'Nidhin Lal';
//   final String result = reversString(originalstring);
//   print(result);
// }

String reversString(String originalstring) {
  String reversedString = '';
  for (var i = originalstring.length - 1; i > 0; i--) {
    reversedString = reversedString + originalstring[i];
  }
  return reversedString;
}

void main(List<String> args) {
  final String originalstring = 'Nidhin Lal';
  final String result = reversString(originalstring);
  print(result);
}
