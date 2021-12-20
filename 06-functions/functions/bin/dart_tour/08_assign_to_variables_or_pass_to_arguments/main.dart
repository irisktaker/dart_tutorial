// Functions can be assigned to -> variables or
//                              -> pass as arguments to another function
void main(List<String> args) {
  var x = sum();
  print(x);
}

void printInfo(String name, int id) {
  String? name;
  int? id;
  print('Name: $name Id: $id');
}

passFunctionAsArgument(Function(String name, int id) printInfo) {
  return printInfo;
}

int sum() => 1 + 1;
 