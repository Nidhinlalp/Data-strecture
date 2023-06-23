class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class Customstack {
  Node? top;

  bool isEmpty() {
    return top == null;
  }

  void push(dynamic data) {
    Node newNode = Node(data);
    if (top == null) {
      top = newNode;
      return;
    }
    newNode.next = top;
    top = newNode;
  }

  dynamic pop() {
    if (isEmpty()) {
      print('empty');
    }
    top = top?.next;
  }

  dynamic peek() {
    if (isEmpty()) {
      print('empty');
    }
    return top?.data;
  }

  void display() {
    Node? currentNode = top;
    while (currentNode != null) {
      print(currentNode.data);
      currentNode = currentNode.next;
    }
  }
}

void main() {
  var stack = Customstack();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.pop();
  stack.display();

  // print(stack.peek());
}

// class Node {
//   dynamic data;
//   Node? next;

//   Node(this.data);
// }

// class Stack {
//   Node? top;

//   bool isEmpty() {
//     return top == null;
//   }

//   void push(int element) {
//     Node newNode = Node(element);
//     newNode.next = top;
//     top = newNode;
//   }

//   int pop() {
//     if (isEmpty()) {
//       throw Exception("Stack is empty");
//     }

//     int poppedElement = top?.data;
//     top = top?.next;
//     return poppedElement;
//   }

//   void printStack() {
//     Node? current = top;
//     String stackString = "Stack: ";
//     while (current != null) {
//       stackString += "${current.data} ";
//       current = current.next;
//     }
//     print(stackString.trim());
//   }
// }

// void main() {
//   Stack stack = Stack();

//   stack.push(1);
//   stack.push(2);
//   stack.push(3);
//   stack.push(4);
//   stack.push(5);

//   stack.printStack(); // Output: Stack: 5 4 3 2 1

//   stack.pop();
//   stack.printStack(); // Output: Stack: 4 3 2 1

//   stack.printStack(); // Output: Stack: 4 2 1
// }
