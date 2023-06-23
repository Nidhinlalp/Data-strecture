class Node {
  dynamic data;
  Node? next;
  Node? prev;

  Node(this.data);
}

class DoublyLInkedList {
  Node? head;
  Node? tail;

  void add(dynamic data) {
    Node add = Node(data);
    if (head == null) {
      head = add;
      tail = add;
    } else {
      tail!.next = add;
      add.prev = tail;
    }
    tail = add;
  }

  void display() {
    Node? curr = tail;
    while (curr != null) {
      print(curr.data);
      curr = curr.prev;
    }
  }
}

void main() {
  var list = DoublyDInkedList();
  list.addDnode(12);
  list.display();
}

class DNode {
  dynamic data;
  DNode? next;
  DNode? prev;
  DNode(this.data);
}

class DoublyDInkedList {
  DNode? head;
  DNode? tail;
  void addDnode(dynamic data) {
    DNode? newNode = DNode(data);

    if (head == null) {
      head = newNode;
      tail = newNode;
    } else {
      tail!.next = newNode;
      newNode.prev = tail;
    }
    tail = newNode;
  }

  void display() {
    if (head == null) {
      print('oops');
      return;
    }
    DNode? printer = tail;
    while (printer != null) {
      print(printer.data);
      printer = printer.prev;
    }
  }
}
