class Node {
late  int value;
 late Node left;
late  Node right;

  Node(this.value);
}

Node? deleteNode(Node root, int value) {
  // ignore: unnecessary_null_comparison
  if (root == null) {
    return null; // Node not found
  }

  if (value < root.value) {
    root.left = deleteNode(root.left, value)!; // Search in the left subtree
  } else if (value > root.value) {
    root.right = deleteNode(root.right, value)!; // Search in the right subtree
  } else {
    // Node to delete is found

    // Case 1: No child or only one child
    // ignore: unnecessary_null_comparison
    if (root.left == null) {
      return root.right; // Return the right child or null
    // ignore: unnecessary_null_comparison
    } else if (root.right == null) {
      return root.left; // Return the left child or null
    }

    // Case 2: Two children
    // Find the minimum value in the right subtree (or you can use the maximum value in the left subtree)
    Node minRight = findMin(root.right);
    root.value = minRight.value; // Replace the node's value with the minimum value
    root.right = deleteNode(root.right, minRight.value)!; // Delete the minimum value node in the right subtree
  }

  return root;
}

Node findMin(Node node) {
  // ignore: unnecessary_null_comparison
  while (node.left != null) {
    node = node.left;
  }
  return node;
}
