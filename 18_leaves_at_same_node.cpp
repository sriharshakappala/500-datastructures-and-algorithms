#include <iostream>

using namespace std;

struct node {
  struct node *left;
  int data;
  struct node *right;
};

node* newNode(int data) {
  node *temp = new node;
  temp->data = data;
  temp->left = NULL;
  temp->right = NULL;
  return temp;
}

bool checkIfLeavesAtSameLevel(node *root, int level, int leafLevel) {

}

int main() {
  node *tree = newNode(1);
  tree->left = newNode(2);
  tree->right = newNode(3);
  tree->left->left = newNode(4);
  tree->right->right = newNode(5);
  cout << endl;
  int level = 0;
  static int leafLevel = 0;
  if(checkIfLeavesAtSameLevel(tree, level, leafLevel)) {

  }
  return 0;
}