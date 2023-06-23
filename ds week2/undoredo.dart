class Undoredo {
  final List<dynamic> _stack = [];
  final List<dynamic> _redostack = [];

  void push(dynamic item) {
    _stack.add(item);
    _redostack.clear();
  }

  // dynamic pop() {
  //   final item = _stack.isEmpty ? Exception('empty') : _stack.removeLast();
  //   if (item != null) {
  //     _redostack.add(item);
  //   }
  //   return item;
  // }

  void undo() {
    final item = _stack.isEmpty ? Exception('empty') : _stack.removeLast();
    if (item != null) {
      _redostack.add(item);
    }
  }

  void redo() {
    final item =
        _redostack.isEmpty ? Exception('empty') : _redostack.removeLast();
    if (item != null) {
      _stack.add(item);
    }
  }

  bool get canundo => _stack.isNotEmpty;
  bool get canredo => _redostack.isNotEmpty;
}

void main() {
  var stack = Undoredo();
  stack.push(10);
  stack.push(20);
  stack.push(30);
  print('Can undo: ${stack.canundo}');
  print('Can redo: ${stack.canredo}');

  // var item = stack.pop();
  // print('popped item:$item');
  stack.undo();
  stack.redo();
  print('Can undo: ${stack.canundo}');
  print('Can redo: ${stack.canredo}');
}
