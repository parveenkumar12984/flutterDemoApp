import 'package:first/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  // const ItemWidget({Key? key}) : super(key: key);

  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 0.0,
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(
          item.image,
          width: 20,
          height: 20,
        ),
        title: Text(item.name),
        subtitle: Text(item.desc),
        // trailing: Text(item.price.toString()),
        trailing: Text(
          "\$${item.id}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.pink,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
