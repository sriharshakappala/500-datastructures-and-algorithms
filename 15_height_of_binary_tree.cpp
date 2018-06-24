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

int height(node *tree) {
  if(tree == NULL) {
    return 0;
  }
  return 1 + max(height(tree->left), height(tree->right));
}

int main() {
  node *tree = newNode(1);
  tree->left = newNode(2);
  tree->right = newNode(3);
  tree->left->left = newNode(4);
  tree->left->right = newNode(5);
  tree->right->right = newNode(6);
  tree->left->left->left = newNode(7);
  cout << "The height is " << height(tree);
  return 0;
}