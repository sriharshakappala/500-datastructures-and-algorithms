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

void printPreorder(node *root) {
  if (root == NULL) return;
  cout << root->data << " ";
  printPreorder(root->left);
  printPreorder(root->right);
}

void deleteTree(node *root) {
  if(root == NULL) {
    return;
  }
  deleteTree(root->left);
  deleteTree(root->right);
  delete root;
  root = NULL;
}

int main() {
  node *tree = newNode(1);
  tree->left = newNode(2);
  tree->right = newNode(3);
  tree->left->left = newNode(4);
  tree->left->right = newNode(5);
  tree->right->right = newNode(6);
  tree->left->left->left = newNode(7);
  printPreorder(tree);
  cout << endl;
  cout << "Deleting Tree...";
  deleteTree(tree);
  return 0;
}