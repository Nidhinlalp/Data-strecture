class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class LinkedList {
  Node? head;

  LinkedList() {
    head = null;
  }
  void add(dynamic data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }
}

void main() {
  LinkedList list = LinkedList();
  list.add(3);
  list.add(2);
  list.add(1);
  list.add(10);

  Node? currentNode = list.head;
  while (currentNode != null) {
    print(currentNode.data);
    currentNode = currentNode.next;
  }
}
