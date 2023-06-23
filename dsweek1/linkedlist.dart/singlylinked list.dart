class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class SinglyLinkedList {
  Node? head;
  Node? tail;

  void add(dynamic data) {
    Node? add = Node(data);
    if (head == null) {
      head = add;
    } else {
      tail!.next = add;
    }
    tail = add;
  }

  void display() {
    Node? curr = head;
    while (curr != null) {
      print(curr.data);
      curr = curr.next;
    }
  }
}

void main() {
  var list = SinglyLinkedList();
  list.add(10);
  list.add(20);
  list.add(30);
  list.add(40);
  list.display();
}
