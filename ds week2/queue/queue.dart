class CustomQueue {
  List<dynamic> _queue = [];
  bool get isEmp => _queue.isEmpty;

  void enqueue(dynamic elements) {
    _queue.add(elements);
  }

  dynamic dequeue() {
    if (_queue.isEmpty) {
      throw StateError('Cannot dequeue the empty Queue');
    }
    return _queue.removeAt(0);
  }

  void deleteMiddle() {
    int middleIndex = _queue.length ~/ 2;
    _queue.removeAt(middleIndex);
  }
}

void main() {
  var queue = CustomQueue();
  queue.enqueue(1);
  queue.enqueue(2);
  queue.enqueue(3);
  queue.enqueue(4);
  queue.enqueue(5);
  queue.enqueue(6);
  queue.enqueue(7);

  print('before middle element deletion');
  for (var element in queue._queue) {
    print(element);
  }
  queue.deleteMiddle();
  print('After middle element deletion');
  for (var element in queue._queue) {
    print(element);
  }

  print(queue.isEmp);
}
