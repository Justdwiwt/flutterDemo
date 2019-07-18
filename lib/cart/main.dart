/// 定义基类
class Meta {
  String name;
  double price;

  Meta(this.name, this.price);
}

/// Mixin 全局print
abstract class PrintHelper {
  printInfo() => print(getInfo());

  getInfo();
}

/// 定义商品 Item 类
class Item extends Meta {
  Item(String name, double price) : super(name, price);

  Item operator +(Item item) => Item(name + item.name, price + item.price);
}

/// 定义购物车类
class ShoppingCart extends Meta with PrintHelper {
  DateTime date;
  String code;
  List<Item> bookings;

  double get price =>
      bookings.reduce((value, element) => value + element).price;

  ShoppingCart({name}) : this.withCode(name: name, code: null);

  ShoppingCart.withCode({name, this.code})
      : date = DateTime.now(),
        super(name, 0);

  getInfo() => '''
  购物车信息:
  -----------------------------
    用户名: $name
    优惠码: ${code ?? "没有"}
    总价格: $price
    Date:  $date
  -----------------------------
''';
}

void main() {
  ShoppingCart.withCode(name: '张三', code: '123456')
    ..bookings = [Item('苹果', 10.0), Item('鸭梨', 20.0)]
    ..printInfo();

  ShoppingCart(name: '李四')
    ..bookings = [Item('苹果', 12.0), Item('鸭梨', 23.0)]
    ..printInfo();
}
