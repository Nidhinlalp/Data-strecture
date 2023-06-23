class Node {
  late int data;
  Node? next;

  Node(int data) {
    this.data = data;
    next = null;
  }
}

class LinkedList {
  Node? head;

  void addEnd(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      Node current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = newNode;
    }
  }

  void display() {
    Node? current = head;
    while (current != null) {
      print('${current.data} -> ');
      current = current.next;
    }
  }
}

void main() {
  LinkedList myLinkedList = LinkedList();
  myLinkedList.addEnd(5);
  myLinkedList.addEnd(10);
  myLinkedList.addEnd(15);
  myLinkedList.addEnd(20);
  myLinkedList.display();
}
