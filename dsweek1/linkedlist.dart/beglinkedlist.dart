class Node {
  dynamic data;
  Node? next;
  Node(this.data);
}

class LinkedList {
  Node? head;

  void addFirst(dynamic data) {
    Node newNode = Node(data);
    newNode.next = head;
    head = newNode;
  }

  void display() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  LinkedList linkedList = LinkedList();

  // Adding elements to the beginning of the LinkedList
  linkedList.addFirst(3);
  linkedList.addFirst(2);
  linkedList.addFirst(1);

  // Displaying the elements of the LinkedList
  linkedList.display();
}
