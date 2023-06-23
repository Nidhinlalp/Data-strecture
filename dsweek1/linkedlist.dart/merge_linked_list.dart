class Node {
  var data;
  Node? next;

  Node(this.data);
}

class CreateLinkedList {
  Node? head;
  Node? tail;

  void add(data) {
    var node = Node(data);
    if (head == null) {
      head = node;
    } else {
      tail!.next = node;
    }
    tail = node;
  }

  CreateLinkedList merger(CreateLinkedList otherLinkedList) {
    var mergeList = CreateLinkedList();

    var curr = head;
    while (curr != null) {
      mergeList.add(curr.data);
      curr = curr.next;
    }

    curr = otherLinkedList.head;
    while (curr != null) {
      mergeList.add(curr.data);
      curr = curr.next;
    }

    return mergeList;
  }

  void display() {
    var current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }
}

void main() {
  var list10 = CreateLinkedList();
  var list11 = CreateLinkedList();

  list10.add(10);
  list10.add(10);
  list10.add(10);
  list10.add(10);

  list11.add(11);
  list11.add(11);
  list11.add(11);
  list11.add(11);

  var merge = list10.merger(list11);

  merge.display();
}
