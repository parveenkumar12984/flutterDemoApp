import 'package:first/core/store.dart';
import 'package:first/models/cart.dart';
import 'package:first/models/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({Key? key, required this.catalog}) : super(key: key);

//   @override
//   _AddToCartState createState() => _AddToCartState();
// }

// class _AddToCartState extends State<AddToCart> {
//   final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    VxState.listen(context, to: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    // final catalogModel _catalog = (VxState.store as MyStore).catalog;
    bool isInCart = _cart.items.contains(catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
          AddMutation(catalog);
          // isInCart = isInCart.toggle();
          // final _catalog = catalogModel();

          // _cart.catalog = _catalog;
          // _cart.add(catalog);
          // setState(() {});
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isInCart
          ? Icon(Icons.done)
          : Icon(CupertinoIcons.cart_badge_plus).p8(),
    );
  }
}
