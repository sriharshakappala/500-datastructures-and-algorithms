#include <iostream>
#include <queue>

using namespace std;

struct node {
  struct node *left;
  int data;
  struct node *right;
};

// Root, Left, Right
void printPreorder(node *root) {
  if (root == NULL) return;
  cout << root->data << " ";
  printPreorder(root->left);
  printPreorder(root->right);
}

// Left, Root, Right
void printInorder(node *root) {
  if (root == NULL) return;
  printInorder(root->left);
  cout << root->data << " ";
  printInorder(root->right);
}

// Left, Right, Root
void printPostorder(node *root) {
  if (root == NULL) return;
  printPostorder(root->left);
  printPostorder(root->right);
  cout << root->data << " ";
}

node* newNode(int data) {
  node *temp = new node;
  temp->data = data;
  temp->left = NULL;
  temp->right = NULL;
  return temp;
}

int main() {
  node *root = newNode(1);
  root->left = newNode(2);
  root->right = newNode(3);
  root->left->left = newNode(4);
  root->left->right = newNode(5);
  root->right->right = newNode(6);
  cout << "Pre Order" << endl;
  printPreorder(root);
  cout << endl;
  cout << "In Order" << endl;
  printInorder(root);
  cout << endl;
  cout << "Post Order" << endl;
  printPostorder(root);
  return 0;
}
