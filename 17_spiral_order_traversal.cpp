#include <iostream>
#include <stack>

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

int height(node *root) {
  if(root == NULL) {
    return 0;
  }
  return max(height(root->left), height(root->right)) + 1;
}

void spiralOrder(node *root) {
}

int main() {
  node *root = newNode(1);
  root->left = newNode(2);
  root->right = newNode(3);
  root->left->left = newNode(4);
  root->left->right = newNode(5);
  root->right->right = newNode(6);
  root->left->left->left = newNode(7);
  spiralOrder(root);
  return 0;
}