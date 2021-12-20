// immutable - constant constructor

class ImmutablePoint {
  // any final variables must have a value
  final num x, y;

  const ImmutablePoint(this.x, this.y);

  void info() {
    print('x = $x , y = $y');
  }
}
