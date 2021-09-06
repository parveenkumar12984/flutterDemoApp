class catalogModel {
  //singleton class
  // static final catModel = catalogModel.internal();
  // catalogModel.internal();
  // factory catalogModel() => catModel;

  static List<Item>? items = null;
  // = [
  //   Item(
  //     albumId: 1,
  //     id: 1,
  //     title: "mobile",
  //     url: "https://avatars.githubusercontent.com/u/9919?s=280&v=4",
  //     thumbnailUrl: "https://avatars.githubusercontent.com/u/9919?s=280&v=4",
  //     image:
  //         "data:image/jpeg;base64,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",
  // )
  // ];

  Item getById(int id) =>
      items!.firstWhere((element) => element.id == id, orElse: null);

  Item getByPosition(int pos) => items![pos];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final int price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
  // final int albumId;
  // final num id;
  // final String title;
  // final String url;
  // final String thumbnailUrl;

  // Item(
  //     {required this.albumId,
  //     required this.id,
  //     required this.title,
  //     required this.url,
  //     required this.thumbnailUrl});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image,
      };
  // final String image;

  // Item(
  //     {required this.id,
  //     required this.name,
  //     required this.desp,
  //     required this.price,
  //     required this.color,
  //     required this.image});

  // final products=[
  //   Item(
  //     id: 1,
  //     name: "phone",
  //     desp: "mobile",
  //     price: 100,
  //     color: "pink",
  //     image: "abc",
  //   )
  // ];
}
