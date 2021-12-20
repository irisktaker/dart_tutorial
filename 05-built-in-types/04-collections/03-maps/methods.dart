///
/// Maps and also called Dictionary
///
void main() {
  var varMap = {7: 'a', 8: 'b', 9: 'c'};
  Map mapMap = {7: 'a', 8: 'b', 9: 'c'};
  print('$varMap \n$mapMap\n');

  /// []indexNum | .keys | .values | .entries
  print(varMap[9]);
  print('Keys: ${varMap.keys}');
  print('Values: ${varMap.values}');
  print('${varMap.entries}\n');

  // addAll() method
  mapMap.addAll({6: 'yank', 5: 'Yy'});
  print("$mapMap \n");

  // containsKey | Does mapMap contains key 6 ? True or False
  print("Does mapMap contains key 6 ? True or False: "
      "${mapMap.containsKey(6)}");
  print("Does mapMap contains key 10 ? True or False: "
      "${mapMap.containsKey(10)}");

  // containsValue | Does mapMap contains value of Yy ? True or False
  print("Does mapMap contains value of Yy ? True or False: "
      "${mapMap.containsValue('Yy')}\n");

  // remove varMap key 8
  print("remove varMap key 8: ${varMap.remove(8)}\n");
  // clear varMap
  varMap.clear();
  print("clear varMap: ${varMap}\n");

  // for each
  print(mapMap);
  mapMap.forEach((key, value) {
    print('Key: ${key}, Value: ${value}');
  });
}
