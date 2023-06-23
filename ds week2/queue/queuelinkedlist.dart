// class Node {
//   dynamic data;
//   Node? next;

//   Node(this.data);
// }

// class Queue {
//   Node? front;
//   Node? rear;

//   bool get isEmpty => front == null;
//   void enqueue(dynamic item) {
//     Node? newNode = Node(item);
//     if (isEmpty) {
//       front = newNode;
//       rear = newNode;
//     }
//     rear!.next = newNode;
//     rear = newNode;
//   }

//   dynamic dequeue() {
//     if (isEmpty) {
//       throw StateError('empty queue');
//     }
//     var dequeueditem = front!.data;
//     front = front!.next;

//     if (front == null) {
//       rear = null;
//     }
//     return dequeueditem;
//   }

//   void display() {
//     Node? current = front;
//     while (current != null) {
//       print(current.data);
//       current = current.data;
//     }
//   }
// }
// class Node {
//   dynamic data;
//   Node? next;

//   Node(this.data);
// }

// class CustomQueue {
//   Node? front;
//   Node? rear;

//   bool get isEmpty => front == null;
//   void enqueue(dynamic data) {
//     Node? newNode = Node(data);
//     if (isEmpty) {
//       front = newNode;
//       rear = newNode;
//     }
//     rear?.next = newNode;
//     rear = newNode;
//   }

//   dynamic dequeue() {
//     if (isEmpty) {
//       throw StateError('empty queue');
//     }
//     var dequeuedItem = front!.data;
//     front = front!.next;
//     if (front == null) {
//       rear = null;
//     }
//     return dequeuedItem;
//   }
// }

class Node {
  dynamic data;
  Node? next;

  Node(this.data);
}

class Queue {
  Node? front;
  Node? rear;

  bool isEmpty() {
    return front == null;
  }

  void enqueue(dynamic data) {
    Node newNode = Node(data);
    if (front == null) {
      front = newNode;
      rear = newNode;
    } else {
      rear!.next = newNode;
      rear = newNode;
    }
    print('$data enqueued successfully.');
  }

  void dequeue() {
    if (isEmpty()) {
      print('Cannot dequeue. The queue is empty.');
    } else {
      front = front!.next;
    }
  }

  dynamic peek() {
    if (isEmpty()) {
      print('The queue is empty.');
      return null;
    } else {
      return front!.data;
    }
  }
}

void main() {
  Queue queue = Queue();

  queue.enqueue(10);
  queue.enqueue(20);
  queue.enqueue(30);

  queue.dequeue();
  queue.dequeue();
  queue.dequeue();
  // Trying to dequeue from an empty queue

  //print('Peek: ${queue.peek()}');
}
