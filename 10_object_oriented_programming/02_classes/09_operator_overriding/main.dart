/** 
 * Overridable operators
 * 
 * You can override the operators shown in the following table.
 * For example, if you define a vector class, you might define a + method 
 * to add two vectors.
 * 
 *    <     +     |     []
 *    >     /     ^     []=
 *    <=    ~/    &     ~
 *    >=    *     <<    ==
 *    -     %     >>
 */

void main() {
  Point p1 = new Point(2, 2);
  Point p2 = new Point(3, 3);
  Point p3 = p1 + p2;
  Point p4 = p2 - p1;

  print(p3);
  print(p4);
}

class Point {
  // attributes
  num? _x, _y;

  // constructor
  Point(this._x, this._y);

  // setters and getters
  set x(num value) => _x = value;
  num get x => _x!;

  set y(num value) => _y = value;
  num get y => _y!;

  // overriding operators
  Point operator +(Point p) => new Point(x + p.x, y + p.y);
  Point operator -(Point p) => new Point(x - p.x, y - p.y);

  @override
  String toString() {
    return 'x = ${x}, y = ${y}';
  }
}
