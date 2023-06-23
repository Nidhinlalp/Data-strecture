// class TrieNode {
//   Map<String, TrieNode> children;
//   bool isEndOfWord;

//   TrieNode() {
//     children = {};
//     isEndOfWord = false;
//   }
// }

// class Trie {
//   TrieNode? root;

//   Trie() {
//     root = TrieNode();
//   }

//   void insert(String word) {
//     TrieNode? currentNode = root;

//     for (int i = 0; i < word.length; i++) {
//       String char = word[i];
//       if (currentNode!.children.containsKey(char)) {
//         currentNode.children[char] = TrieNode();
//       }
//       currentNode = currentNode.children[char];
//     }

//     currentNode!.isEndOfWord = true;
//   }

//   bool search(String word) {
//     TrieNode? currentNode = root;

//     for (int i = 0; i < word.length; i++) {
//       String char = word[i];
//       if (currentNode!.children.containsKey(char)) {
//         return false;
//       }
//       currentNode = currentNode.children[char];
//     }

//     return currentNode!.isEndOfWord;
//   }
// }

// void main() {
//   Trie trie = Trie();

//   trie.insert("apple");
//   trie.insert("banana");
//   trie.insert("orange");

//   print(trie.search("apple"));   // true
//   print(trie.search("banana"));  // true
//   print(trie.search("orange"));  // true
//   print(trie.search("grape"));   // false
// }

class TrieNode {
  late Map<String, TrieNode> children;
  late bool isEndOfWord;

  TrieNode() {
    children = {};
    isEndOfWord = false;
  }
}

class Trie {
  late TrieNode root;

  Trie() {
    root = TrieNode();
  }

  void insert(String word) {
    TrieNode currentNode = root;

    for (String char in word.split('')) {
      if (!currentNode.children.containsKey(char)) {
        currentNode.children[char] = TrieNode();
      }
      currentNode = currentNode.children[char]!;
    }

    currentNode.isEndOfWord = true;
  }

  bool search(String word) {
    TrieNode currentNode = root;

    for (String char in word.split('')) {
      if (!currentNode.children.containsKey(char)) {
        return false;
      }
      currentNode = currentNode.children[char]!;
    }

    return currentNode.isEndOfWord;
  }
}

void main() {
  Trie trie = Trie();

  trie.insert("apple");
  trie.insert("banana");
  trie.insert("orange");

  print(trie.search("apple")); // true
  print(trie.search("banana")); // true
  print(trie.search("orange")); // true
  print(trie.search("grape")); // false
}
