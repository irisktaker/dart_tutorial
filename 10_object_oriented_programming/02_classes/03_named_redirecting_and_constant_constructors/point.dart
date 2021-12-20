// 3- Initializer list

class Point {
  num? x, y;
  // we need to do initialization before the body even start
  // used sometimes with final
  Point(Map point, {int})
      : this.x = point['x'],
        this.y = point['y'] {
    // constructor body
    // map
    // x = point[x];
    // y = point[y];  // after the body initialization
  }
  // 2- named constructor -->> use to create more than one constructor in dart
  // plus Redirect constructor
  // note: this. -> return to the instance or the object from the class
  // but this() -> returns to the default constructor in the class. ex: this() == Point()
  Point.fromXAxis(int x) : this({'x': x, 'y': 0});

  // method
  info() {
    print('x = $x , y = $y');
  }
}
