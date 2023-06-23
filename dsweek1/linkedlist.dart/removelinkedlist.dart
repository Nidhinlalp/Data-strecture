// // class Node {
// //   dynamic data;
// //   Node? next;

// //   Node(this.data);
// // }

// // class LinkedList {
// //   Node? head;
// //   Node? tail;

// //   LinkedList() {
// //     head = null;
// //     tail = null;
// //   }

// //   void add(dynamic data) {
// //     Node? curr = Node(data);
// //     if (head == null) {
// //       head = curr;
// //       tail = curr;
// //     } else {
// //       tail!.next = curr;
// //     }
// //     tail = curr;
// //   }

// //   void remove(int pos) {
// //     var cur = head;
// //     int size = 0;

// //     while (cur != null) {
// //       if (size == pos -2) {
// //         cur.next = cur.next!.next;
// //         break;
// //       }
// //       size++;
// //       cur = cur.next;
// //     }
// //   }

// //   void display() {
// //     Node? newNode = head;
// //     while (newNode != null) {
// //       print(newNode.data);
// //       newNode = newNode.next;
// //     }
// //   }
// // }

// // void main() {
// //   LinkedList list = LinkedList();
// //   list.add(10);
// //   list.add(20);
// //   list.add(30);
// //   list.add(40);
// //   list.add(50);
// //   list.remove(2);
// //   list.display();
// // }

// class Node {
//   dynamic data;
//   Node? next;

//   Node(this.data);
// }

// class LinkedList {
//   Node? head;
//   Node? tail;

//   LinkedList() {
//     head = null;
//     tail = null;
//   }

//   void add(dynamic data) {
//     Node? newNode = Node(data);
//     if (head == null) {
//       head = newNode;
//     } else {
//       tail!.next = newNode;
//     }
//     tail = newNode;
//   }

//   void remove(int pos) {
//     if (head == null) {
//       return;
//     }

//     Node? curr = head;
//     int currpos = 0;

//     while (curr != null) {
//       if (currpos == pos-1) {
//         if (curr.next == null) {
//           head = null;
//         } else {
//           curr.next = curr.next!.next;
//           break;
//         }
//       }
//       currpos++;

//       curr = curr.next;
//     }
//   }

//   void display() {
//     Node? curr = head;
//     while (curr != null) {
//       print(curr.data);
//       curr = curr.next;
//     }
//   }
// }

// void main() {
//   LinkedList list = LinkedList();
//   list.add(10);
//   list.add(20);
//   list.add(30);
//   list.remove(1);
//   list.display();
// }
// class Node {
//   int value;
//   Node? next;

//   Node(this.value);
// }

// class LinkedList {
//   Node? head;

//   LinkedList() {
//     head = null;
//   }

//   void add(int value) {
//     Node newNode = Node(value);
//     if (head == null) {
//       head = newNode;
//     } else {
//       Node? currentNode = head;
//       while (currentNode!.next != null) {
//         currentNode = currentNode.next;
//       }
//       currentNode.next = newNode;
//     }
//   }

//   void remove(int index) {
//     if (head == null) {
//       return;
//     }

//     Node? currentNode = head;
//     int currentIndex = 0;
//     while (currentNode != null) {
//       if (currentIndex == index) {
//         if (currentNode.next == null) {
//           head = null;
//         } else {
//           currentNode.next = currentNode.next!.next;
//         }
//         break;
//       }
//       currentIndex++;
//       currentNode = currentNode.next;
//     }
//   }

//   void printList() {
//     Node? currentNode = head;
//     while (currentNode != null) {
//       print(currentNode.value);
//       currentNode = currentNode.next;
//     }
//   }
// }

// void main() {
//   LinkedList list = LinkedList();
//   list.add(1);
//   list.add(2);
//   list.add(3);
//   list.add(4);
//   list.add(5);

//   list.printList();

//   // Remove the element at position 2.
//   list.remove(2);

//   print('');

//   // Print the linked list again.
//   list.printList();
// }

class Node {
  dynamic data;
  Node? next;
  Node(this.data);
}

class LikdList {
  Node? head;
  Node? tail;

  void add(dynamic data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      tail?.next = newNode;
    }
    tail = newNode;
  }

  void printer() {
    Node? printer = head;
    while (printer != null) {
      print(printer.data);
      printer = printer.next;
    }
  }

  void remove(dynamic index) {
    if (head == null) {
      return;
    }

    Node? currentNode = head;
    int currentIndex = 0;

    while (currentNode != null) {
      if (currentIndex == index) {
        if (currentNode.next == null) {
          head = null;
        } else {
          currentNode.next = currentNode.next!.next;
        }
        break;
      }
      currentIndex++;
      currentNode = currentNode.next;
    }
  }
}

void main(List<String> args) {
  LikdList current = LikdList();

  current.add(10);
  current.add(20);
  current.add(30);
  current.add(40);
  current.add(50);
  current.add(60);
  current.printer();
  print('');
  current.remove(1);
  current.printer();
}
