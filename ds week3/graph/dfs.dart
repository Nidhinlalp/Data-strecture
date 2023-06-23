abstract class Graph {
  Map<String, List<String>> adjacencyList = {};

  Graph() {
    adjacencyList = {};
  }

  void addVertex(String startvertex) {
    if (adjacencyList.containsKey(startvertex)) {
      adjacencyList[startvertex];
    }
  }

  void addEdge(String vertex1, String vertex2) {
    adjacencyList[vertex1]?.add(vertex2);
    adjacencyList[vertex2]?.add(vertex1);
  }

  void dfs(String vertex) {
    Set<String> visited = {};

    void traverse(String vertex) {
      visited.add(vertex);
      print('visited vertex:$vertex');
    }

    for (var adjacencyvertex in adjacencyList[vertex] ?? []) {
      if (visited.contains(adjacencyvertex)) {
        traverse(adjacencyvertex);
      }
    }

  }

  traverse(startvertex);
}