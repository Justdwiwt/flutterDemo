class Point {
  num x, y;

  Point() : this.make(0, 0);

  Point.left(x) : this.make(x, 0);

  Point.right(y) : this.make(0, y);

  Point.make(this.x, this.y);

  void printInfo() => print('($x,$y)');
}

class Vector extends Point {
  num x = 0;
  num y = 0;
  num z = 0;

/*5 个构造函数
  Vector
  Vector.left;
  Vector.middle
  Vector.right
  Vector.make
*/
  Vector() : this.make(0, 0, 0);

  Vector.left(x) : this.make(x, 0, 0);

  Vector.middle(y) : this.make(0, y, 0);

  Vector.right(z) : this.make(0, 0, z);

  Vector.make(this.x, this.y, this.z);

  @override
  void printInfo() => print('($x,$y,$z)'); // 覆写了 printInfo 实现
}
