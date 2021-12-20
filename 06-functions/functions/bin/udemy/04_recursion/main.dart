// Recursion
void main() {
  var fun = recursion(3);
  print(fun);
}

int recursion(n) {
  if (n != 0) {
    return n + recursion(n - 1);
  } else {
    return 0;
  }
}
