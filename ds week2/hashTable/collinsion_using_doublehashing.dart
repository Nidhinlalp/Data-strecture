class Node {
  dynamic key;
  dynamic value;
  Node? next;

  Node(this.key, this.value);
}

class HashTable {
  late List<List<Node?>> table;
  int capacity;

  HashTable(this.capacity) {
    table = List<List<Node?>>.filled(capacity, []);
  }

  int _hash(dynamic key) {
    // Compute the hash code for the key
    return key.hashCode % capacity;
  }

  void put(dynamic key, dynamic value) {
    int index = _hash(key);
    if (table[index].isEmpty) {
      // If the bucket is empty, create a new linked list and add the node
      table[index] = [Node(key, value)];
    } else {
      // If there are nodes in the bucket, find the last node and add a new node at the end
      Node? currentNode = table[index][0];
      while (currentNode!.next != null) {
        currentNode = currentNode.next;
      }
      currentNode.next = Node(key, value);
    }
  }

  dynamic get(dynamic key) {
    int index = _hash(key);
    if (table[index].isEmpty) {
      return null; // Key not found
    } else {
      // Traverse the linked list in the bucket to find the key
      Node? currentNode = table[index][0];
      while (currentNode != null) {
        if (currentNode.key == key) {
          return currentNode.value; // Found the key, return the value
        }
        currentNode = currentNode.next;
      }
      return null; // Key not found
    }
  }

  void remove(dynamic key) {
    int index = _hash(key);
    if (table[index].isEmpty) {
      return; // Key not found
    } else {
      Node? previousNode;
      Node? currentNode = table[index][0];
      while (currentNode != null) {
        if (currentNode.key == key) {
          if (previousNode == null) {
            table[index]
                .remove(currentNode); // Removing the first node in the list
          } else {
            previousNode.next = currentNode
                .next; // Removing a node in the middle or at the end of the list
          }
          return; // Key removed
        }
        previousNode = currentNode;
        currentNode = currentNode.next;
      }
    }
  }
}

void main() {
  HashTable hashTable = HashTable(10);

  hashTable.put('apple', 1);
  hashTable.put('banana', 2);
  hashTable.put('cherry', 3);

  print(hashTable.get('apple')); // Output: 1
  print(hashTable.get('banana')); // Output: 2
  print(hashTable.get('cherry')); // Output: 3
  print(hashTable.get('durian')); // Output: null

  hashTable.remove('banana');
  print(hashTable.get('banana')); // Output: null
}
