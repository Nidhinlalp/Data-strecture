// class Node {
//   int data;
//   Node? left;
//   Node? right;

//   Node(this.data);
// }

// class BinarySearchTree {
//   Node? root;
//   BinarySearchTree();
//   void insert(int data) {
//     Node newNode = Node(data);
//     if (root == null) {
//       root = newNode;
//     } else {
//       Node? current = root;

//       while (true) {
//         if (data < current!.data) {
//           if (current.left == null) {
//             current.left = newNode;
//             break;
//           }
//           current = current.left;
//         } else {
//           if (current.right == null) {
//             current.right = newNode;
//             break;
//           }
//           current = current.right;
//         }
//       }
//     }
//   }

//   bool contains(int data) {
//     Node? current = root;
//     while (current != null) {
//       if (data == current.data) {
//         return true;
//       } else if (data < current.data) {
//         current = current.left;
//       } else {
//         current = current.right;
//       }

//     }
//      return false;
//   }
// }

// class Node {
//   int data;
//   Node? left;
//   Node? right;

//   Node(this.data);
// }

// class BinarysearchTree {
//   Node? root;

//   void insert(int data) {
//     Node? newNode = Node(data);
//     if (root == null) {
//       root = newNode;
//     } else {
//       Node? current = root;

//       while (true) {
//         if (data < current!.data) {
//           if (current.left == null) {
//             current.left = newNode;
//             break;
//           }
//           current = current.left;
//         } else {
//           if (current.right == null) {
//             current.right = newNode;
//             break;
//           }
//           current = current.right;
//         }
//       }
//     }
//   }

//   bool contains(int data) {
//     Node? current = root;
//     while (current != null) {
//       if (data == current.data) {
//         return true;
//       } else if (data < current.data) {
//         current = current.left;
//       } else {
//         current = current.right;
//       }
//     }
//     return false;
//   }
// }

// import 'dart:html';

// class MinHeap {
//   List<int> heap = [];

//   MinHeap() {
//     heap = [];
//   }

//   void buildheap(List<int> array) {
//     heap = List.from(array);
//     for (int i = parent(heap.length - 1); i >= 0; i--) {
//       shiftdown(i);
//     }
//   }

//   void shiftdown(int currindex) {
//     int endidx = heap.length - 1;
//     int leftidx = leftchild(currindex);
//     while (leftidx <= endidx) {
//       int rightidx = rightchild(currindex);
//       int idxtoshift;
//       if (rightidx <= endidx && heap[rightidx] < heap[leftidx]) {
//         idxtoshift = rightidx;
//       } else {
//         idxtoshift = leftidx;
//       }

//       if (heap[currindex] > heap[idxtoshift]) {
//         swap(currindex, idxtoshift);
//         currindex = idxtoshift;
//         leftidx = leftchild(currindex);
//       } else {
//         return;
//       }
//     }
//   }

//   void shiftup(int currindex) {
//     int parentidx = parent(currindex);
//     while (currindex > 0 && heap[parentidx] > heap[currindex]) {
//       swap(currindex, parentidx);
//       currindex = parentidx;
//       parentidx = parent(currindex);
//     }
//   }

//   void remove() {
//     swap(0, heap.length - 1);
//     heap.removeLast();
//     shiftdown(0);
//   }

//   void insert(int value) {
//     heap.add(value);
//     shiftup(heap.length - 1);
//   }

//   int parent(int i) {
//     return ((i - 1) ~/ 2);
//   }

//   int leftchild(int i) {
//     return (i * 2 + 1);
//   }

//   int rightchild(int i) {
//     return (i * 2 + 2);
//   }

//   void display() {
//     for (int i = 0; i < heap.length; i++) {
//       print(heap[i]);
//     }
//   }

//   void swap(int i, int j) {
//     int temp = heap[i];
//     heap[i] = heap[j];
//     heap[j] = temp;
//   }
// }

// class TrieNode {
//   Map<String, TrieNode> children;
//   bool isEndofWord;

//   TrieNode() {
//     children = {};
//     isEndofWord = false;
//   }
// }

// class Trie {
//   TrieNode? root;

//   Trie() {
//     root = TrieNode();
//   }

//   void insert(String word) {
//     TrieNode? current = root;
//     for (int i = 0; i < word.length; i++) {
//       String char = word[i];

//       if (current!.children.containsKey(char)) {
//         current.children[char] = TrieNode();
//       }
//       current = current.children[char];
//     }
//     current!.isEndofWord = true;
//   }
// }

// bool contains(String word) {
//   TrieNode? current = root;
//   for (int i = 0; i < word.length; i++) {
//     String char = word[i];

//     if (current!.children.containsKey(char)) {
//       return false;
//     }
//     current = current.children[char];
//   }
//   return current!.isEndofWord;
// }
// class minheap {
//   List<int> heap=[];

//   minheap() {
//     heap = [];
//   }

//   void buildheap(List<int> array) {
//     heap = List.from(array);
//     for (int i = parent(heap.length - 1); i >= 0; i++) {
//       shiftdown(i);
//     }
//   }

//   void shiftdown(int currindex) {
//     int endidx = heap.length - 1;
//     int leftidx = leftchild(currindex);
//     while (leftidx <= endidx) {
//       int rightidx = rightchild(currindex);
//       int idxtoshift;
//       if (rightidx < endidx && heap[rightidx] < heap[leftidx]) {
//         idxtoshift = rightidx;
//       } else {
//         idxtoshift = leftidx;
//       }
//       if (heap[currindex] > heap[idxtoshift]) {
//         swap(currindex, idxtoshift);
//         currindex = idxtoshift;
//         leftidx = leftchild(currindex);
//       } else {
//         return;
//       }
//     }
//   }

//   void shiftup(int currindex) {
//     int parentindex = parent(currindex);
//     while (currindex > 0 && heap[currindex] > heap[parentindex]) {
//       swap(currindex, parentindex);
//       currindex = parentindex;
//       parentindex = parent(currindex);
//     }
//   }

//   void remove() {
//     swap(0, heap.length - 1);
//     heap.removeLast();
//     shiftdown(0);
//   }

//   void insert(int value) {
//     heap.add(value);
//     shiftup(heap.length - 1);
//   }

//   int parent(int i) {
//     return ((i - 1) ~/ 2);
//   }

//   int leftchild(int i) {
//     return (i * 2 + 1);
//   }

//   int rightchild(int i) {
//     return (i * 2 + 2);
//   }

//   void display() {
//     for (int i = 0; i < heap.length; i++) {
//       print(heap[i]);
//     }
//   }

//   void swap(int i, int j) {
//     int temp = heap[i];
//     heap[i] = heap[j];
//     heap[j] = temp;
//   }
// }

// class Node {
//   int value;
//   Node? left;
//   Node? right;
//   Node(this.value);
// }

// class BinarytSearchTree {
//   Node? root;
//   BinarytSearchTree();

//   void insert(int value) {
//     Node? newNode = Node(value);

//     if (root == null) {
//       newNode = root;
//     } else {
//       Node? current = root;
//       while (true) {
//         if (value < current!.value) {
//           if (current.left == null) {
//             current.left = newNode;
//             break;
//           }
//           current = current.left;
//         } else {
//           if (current.right == null) {
//             current.right = newNode;
//             break;
//           }
//           current = current.right;
//         }
//       }
//     }
//   }

//   bool contains(int value) {
//     Node? current = root;
//     while (current != null) {
//       if (value == current.value) {
//         return true;
//       } else if (value <= current.value) {
//         current = current.left;
//       } else {
//         current = current.right;
//       }
//     }
//     return false;
//   }

//   bool isbst(Node? node, int minvalue, int maxvalue) {
//     if (node == null) {
//       return true;
//     }
//     if (node.value < minvalue || node.value > maxvalue) {
//       return false;
//     }

//     return isbst(node, minvalue, node.value - 1) &&
//         isbst(node, node.value + 1, maxvalue);
//   }

//   bool isvalid() {
//     return isbst(root, 0, 24763476235345435);
//   }

//   void preorder(Node? node) {
//     if (node != null) {
//       print(node.value);
//       preorder(node.left);
//       preorder(node.right);
//     }
//   }
//    void inorder(Node? node) {
//     if (node != null) {

//       preorder(node.left);
//         print(node.value);
//       preorder(node.right);
//     }
//   }
//    void postorder(Node? node) {
//     if (node != null) {

//       preorder(node.left);

//       preorder(node.right);
//        print(node.value);
//     }
//   }
// }

// class minheap {
//   List<int> heap = [];

//   minheap() {
//     heap = [];
//   }

//   void buildheap(List<int> array) {
//     heap = List.from(array);
//     for (int i = 0; i < heap.length; i++) {
//       shiftdown(i);
//     }
//   }

//   void shiftdown(int currentindex) {
//     int endidx = heap.length - 1;
//     int leftidx = leftchild(currentindex);
//     while (leftidx <= endidx) {
//       int rightidx = rightchild(currentindex);
//       int idxtoshift;
//       if (rightidx < endidx && heap[rightidx] < heap[leftidx]) {
//         idxtoshift = rightidx;
//       } else {
//         idxtoshift = leftidx;
//       }
//       if (heap[currentindex] > heap[idxtoshift]) {
//         swap(currentindex, idxtoshift);
//         currentindex = idxtoshift;
//         leftidx = leftchild(currentindex);
//       } else {
//         return;
//       }
//     }
//   }

//   void shiftup(int currentindex) {
//     int parentindex = parent(currentindex);
//     while (currentindex > 0 && heap[currentindex] > heap[parentindex]) {
//       swap(currentindex, parentindex);
//       currentindex = parentindex;
//       parentindex = parent(currentindex);
//     }
//   }

//   void remove() {
//     swap(0, heap.length - 1);
//     heap.removeLast();
//     shiftdown(0);
//   }

//   void insert(int value) {
//     heap.add(value);
//     shiftup(heap.length - 1);
//   }

//   int parent(int i) {
//     return ((i - 1) ~/ 2);
//   }

//   int leftchild(int i) {
//     return (i * 2 + 1);
//   }

//   int rightchild(int i) {
//     return (i * 2 + 2);
//   }

//   void display() {
//     for (int i = 0; i < heap.length-1; i++) {
//       print(heap[i]);
//     }
//   }

//   void swap(int i, int j) {
//     int temp = heap[i];
//     heap[i] = heap[j];
//     heap[j] = temp;
//   }
// }

// void main() {
//   List<int> array = [4, 6, 8, 9];
//   minheap heap = minheap();
//   heap.buildheap(array);
//   heap.insert(10);
//   heap.insert(20);
//   heap.insert(30);
//   heap.insert(40);
//   heap.display();
// }

// class Graph {
//   Map<int, List<int>> _adjacencyList = {};

//   Graph() {
//     _adjacencyList = {};

//     void addvertex(int vertex) {
//       _adjacencyList[vertex] = [];
//     }

//     void addEdges(int vertex1, int vertex2) {
//       _adjacencyList[vertex1]?.add(vertex2);
//       _adjacencyList[vertex2]?.add(vertex1);
//     }

//     void removeEdges(int vertex1, int vertex2) {
//       _adjacencyList[vertex1]?.remove(vertex2);
//       _adjacencyList[vertex2]?.remove(vertex1);
//     }

//     void removevertex(int vertex) {
//       _adjacencyList.remove(vertex);
//       _adjacencyList.forEach((key, value) {
//         value.remove(vertex);
//       });
//     }

//     List<int> getNeighbours(int vertex) {
//       return _adjacencyList[vertex] ?? [];
//     }

//     @override
//     String toString() {
//       return _adjacencyList.toString();
//     }
//   }
// }
class Node {
  int data;
  Node? left;
  Node? right;

  Node(this.data);
}

class Binarysearch {
  Node? root;
  Binarysearch();

  void insert(int data) {
    Node? newNode = Node(data);
    if (root == null) {
      root = newNode;
    } else {
      Node? current = root;
      while (true) {
        if (data < current!.data) {
          if (current.left == null) {
            current.left = newNode;
            break;
          }
          current = current.left;
        } else {
          if (current.right == null) {
            current.right = newNode;
            break;
          }
          current = current.right;
        }
      }
    }
  }

  bool contains(int data) {
    Node? current = root;
    while (current != null) {
      if (data == current.data) {
        return true;
      } else if (data <= current.data) {
        current = current.left;
      } else {
        current = current.right;
      }
    }
    return false;
  }

  bool isbst(Node? node, int minvalue, int maxvalue) {
    if (node == null) {
      return true;
    }
    if (node.data < minvalue || node.data > maxvalue) {
      return false;
    }
    return isbst(node, minvalue, node.data - 1) &&
        isbst(node, node.data + 1, maxvalue);
  }

  bool isvalid() {
    return isbst(root, 0, 644654764);
  }

  int getheight(Node? node) {
    if (node == null) {
      return 0;
    }

    int leftHeight = getheight(node.left);
    int rightHeight = getheight(node.right);

    return 1 + (leftHeight > rightHeight ? leftHeight : rightHeight);
  }

  void preorder(Node? node) {
    if (node != null) {
      print(node.data);
      preorder(node.left);
      preorder(node.right);
    }
  }

  void inorder(Node? node) {
    if (node != null) {
      inorder(node.left);
      print(node.data);
      inorder(node.right);
    }
  }

  void postorder(Node? node) {
    if (node != null) {
      postorder(node.left);
      postorder(node.right);
      print(node.data);
    }
  }
}

void main() {
  Binarysearch search = Binarysearch();
  search.insert(10);
  search.insert(20);
  search.insert(34);
  search.insert(45);
  search.insert(23);
  search.postorder(search.root);
  search.preorder(search.root);
}
