class stack {
  List<dynamic> _stack = [];

  bool get isEmpty => _stack.isEmpty;

  void push(dynamic item) {
    _stack.add(item);
  }

  dynamic pop() {
    if (isEmpty) {
      throw Exception('empty stack');
    }
    _stack.removeLast();
  }

  dynamic peek() => isEmpty ? throw Exception('empty stack') : _stack.last;

  void display() {
    for (int i = _stack.length; i >= 0; i--) {
      print(_stack[i]);
    }
  }
}
