import 'package:first/core/store.dart';
import 'package:first/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {
  //singleton class
  // static final cartModel = CartModel.internal();
  // CartModel.internal();
  // factory CartModel() => cartModel;

  //catalog fields
  late catalogModel _catalog;

  //collection of Ids - store Ids of each item
  final List<int> _itemIds = [];

  //get catalog
  catalogModel get catalog => _catalog;

  // set catalog
  set catalog(catalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  // get items in the cart
  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // //add item
  // void add(Item item) {
  //   _itemIds.add(item.id);
  // }
  //
  // //remove item
  // void remove(Item item) {
  //   _itemIds.remove(item.id);
  // }
}

class AddMutation extends VxMutation<MyStore> {
  final Item item;

  AddMutation(this.item);

  @override
  perform() {
    store!.cart._itemIds.add(item.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;

  RemoveMutation(this.item);

  @override
  perform() {
    store!.cart._itemIds.remove(item.id);
  }
}
