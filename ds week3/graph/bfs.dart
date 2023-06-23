import 'dart:collection';


 class Graph {
  Map<String, List<String>> adjacencyList = {};

  Graph() {
    adjacencyList = {};
  }

  void addVertex(String vertex) {
    if (!adjacencyList.containsKey(vertex)) {
      adjacencyList[vertex] = [];
    }
  }

  void addEdge(String vertex1, String vertex2) {
    adjacencyList[vertex1]?.add(vertex2);
    adjacencyList[vertex2]?.add(vertex1);
  }

  void bfs(String startVertex) {
    Set<String> visited = {};
    Queue<String> queue = Queue<String>();

    visited.add(startVertex);
    queue.add(startVertex);

    while (queue.isNotEmpty) {
      String currentVertex = queue.removeFirst();
      print('Visited vertex: $currentVertex');

      List<String>? neighbors = adjacencyList[currentVertex];
      if (neighbors != null) {
        for (var neighbor in neighbors) {
          if (!visited.contains(neighbor)) {
            visited.add(neighbor);
            queue.add(neighbor);
          }
        }
      }
    }
  }
}

void main() {
  Graph graph = Graph();
  graph.addVertex('A');
  graph.addVertex('B');
  graph.addVertex('C');
  graph.addVertex('D');
  graph.addVertex('E');
  graph.addEdge('A', 'B');
  graph.addEdge('A', 'C');
  graph.addEdge('B', 'D');
  graph.addEdge('C', 'E');

  print('Breadth-First Traversal (starting from vertex A):');
  graph.bfs('A');
}