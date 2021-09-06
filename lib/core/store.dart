import 'package:first/models/cart.dart';
import 'package:first/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  late catalogModel catalog;
  late CartModel cart;

  MyStore() {
    catalog = catalogModel();
    cart = CartModel();

    cart.catalog = catalog;
  }
}
