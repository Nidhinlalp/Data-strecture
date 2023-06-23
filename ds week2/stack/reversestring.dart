class Stack {
  List<dynamic> _items = [];

  bool isEmpty() {
    return _items.isEmpty;
  }

  void push(dynamic item) {
    _items.add(item);
  }

  dynamic pop() {
    if (isEmpty()) {
      return null;
    }
    return _items.removeLast();
  }
}

String reverseString(String input) {
  Stack stack = Stack();
  String reversedString = '';

  // Push each character onto the stack
  for (int i = 0; i < input.length; i++) {
    stack.push(input[i]);
  }

  // Pop each character from the stack and append it to the reversedString
  while (!stack.isEmpty()) {
    reversedString += stack.pop();
  }

  return reversedString;
}

void main() {
  String originalString = "Hello, World!";
  String reversedString = reverseString(originalString);
  print("Original String: $originalString");
  print("Reversed String: $reversedString");
}
