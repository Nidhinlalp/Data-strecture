class Stack {
  List<dynamic> _stack = [];
  List<dynamic> _tempstack = [];

  void push(dynamic item) {
    _stack.add(item);
  }

  dynamic pop() {
    if (_stack.isEmpty) {
      throw Exception('empty stack');
    }
    _stack.removeLast();
  }

  void middle() {
    if (_stack.isEmpty) {
      throw Exception('empty stack');
    }

    int middle = _stack.length ~/ 2;
    for (int i = 0; i <= middle - 1; i++) {
      _tempstack.add(_stack.removeLast());
    }
    _stack.removeLast();

    while (_stack.isNotEmpty) {
      _stack.add(_tempstack.removeLast());
    }
  }

  void display() {
    for (int i = _stack.length - 1; i >= 0; i--) {
      print(_stack[i]);
    }
  }
}

void main() {
  var stack = Stack();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  stack.push(40);
  stack.push(50);
  stack.middle();
  stack.display();
}
