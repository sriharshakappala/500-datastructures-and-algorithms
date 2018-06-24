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

int isIdentical(node *tree1, node *tree2) {
  if(tree1 == NULL && tree2 == NULL) {
    return 1;
  }
  return (tree1->data == tree2->data) && isIdentical(tree1->left, tree2->left) && isIdentical(tree1->right, tree2->right);
}

int main() {
  // Initialize tree1
  node *tree1 = newNode(1);
  tree1->left = newNode(2);
  tree1->right = newNode(3);
  tree1->left->left = newNode(4);
  tree1->left->right = newNode(5);
  tree1->right->right = newNode(7);
  // Initialize tree1
  node *tree2 = newNode(1);
  tree2->left = newNode(2);
  tree2->right = newNode(3);
  tree2->left->left = newNode(4);
  tree2->left->right = newNode(5);
  tree2->right->right = newNode(7);
  isIdentical(tree1, tree2) ? cout << "Yes" : cout << "No";
  return 0;
}
