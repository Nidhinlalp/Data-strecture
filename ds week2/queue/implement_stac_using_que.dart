class Stack {
  late List<int> queue;

  Stack() {
    queue = [];
  }

  void push(int value) {
    queue.add(value);
  }

  int pop() {
    if (isEmpty()) {
      throw Exception("Stack is empty");
    }

    return queue.removeLast();
  }

  int peek() {
    if (isEmpty()) {
      throw Exception("Stack is empty");
    }

    return queue.last;
  }

  bool isEmpty() {
    return queue.isEmpty;
  }
}

void main() {
  Stack stack = Stack();

  stack.push(1);
  stack.push(2);
  stack.push(3);

  print(stack.peek()); // Output: 3
  print(stack.pop()); // Output: 3
  print(stack.pop()); // Output: 2
  print(stack.isEmpty()); // Output: false
  print(stack.pop()); // Output: 1
  print(stack.isEmpty()); // Output: true
}
