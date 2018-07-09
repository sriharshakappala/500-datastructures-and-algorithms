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

int getValue(node *tree1) {
  int value = 0;
  if (tree1 != NULL) {
    if((tree1->left == NULL) && (tree1->right == NULL)) {
      value = value + 1;
    }
    else {
      value = value + getValue(tree1->left) + getValue(tree1->right);
    }
  }
  return value;
}

int main() {
  node *tree1 = newNode(1);
  tree1->left = newNode(2);
  tree1->right = newNode(3);
  tree1->left->left = newNode(4);
  tree1->left->right = newNode(5);
  tree1->right->right = newNode(7);
  cout << getValue(tree1);
  return 0;
}
