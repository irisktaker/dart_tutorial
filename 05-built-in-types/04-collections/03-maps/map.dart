void main() {
  // Map and also known as Dictionary or Hash

  // 1- Map literal
  print('1- Map literal\n');
  var literalMap = {'key1': 'Value1', 'Key2': 'Value2', 'Key3': 'Value3'};
  print('${literalMap}');

  Map<String, int> salaries = {'Yaseen': 1000, 'Yara': 940, 'Hassan': 750};
  print('Yara salary: ${salaries['Yara']}');
  print('${salaries}\n');

  // 2- Map constructor
  print('2- Map constructor\n');
  var constructorMap = new Map();
  constructorMap['Key1'] = 'Value1';
  constructorMap['Key2'] = 'Value2';
  constructorMap['Key3'] = 'Value3';
  print('${constructorMap}');

  Map<int, String> lang = new Map<int, String>();
  lang[0] = 'Data-Structures';
  lang[1] = 'Algorithm';
  lang[2] = 'AI';
  print('${lang}\n');

  // key occurs only once,
  // but you can use the same value multiple times [] {} {} or andy data-types
  var students = {
    'st010010': {'name': 'Mohammad', 'age': 19},
    'st010020': {'name': 'John', 'age': 18},
  };
  var st010 = students['st010010'];
  print(st010);
  print(st010!['name']);

  // spread operators (... and ...?)
  var number_one = {1: "One", 5: "Five", 7: "This is seven"};
  print(number_one[7]);
  var number_two = {...number_one, 2: "Two", 3: "Three", 4: "Four"};
  print(number_two);

  // collection if and for
  
  // methods
}
