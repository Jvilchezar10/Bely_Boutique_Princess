class Product {
  int id;
  String name;
  double price;
  String description;
  String tags;
  // CategoryModel category;
  DateTime createdAt;
  DateTime updatedAt;
  // List<GalleryModel> galleries;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
    required this.tags,
    // required this.category,
    required this.createdAt,
    required this.updatedAt,
    // required this.galleries,
  });

  // Product.fromJson(Map<String, dynamic> json) {
  // id = json['id'];
  // name = json['name'];
  // price = double.parse(json['price'].toString());
  // description = json['description'];
  // tags = json['tags'];
  // category = CategoryModel.fromJson(json['category']);
  // galleries = json['galleries']
  //     .map<GalleryModel>((gallery) => GalleryModel.fromJson(gallery))
  //     .toList();
  // createdAt = DateTime.parse(json['created_at']);
  // updatedAt = DateTime.parse(json['updated_at']);
  // }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'id': id,
  //     'name': name,
  //     'price': price,
  //     'description': description,
  //     'tags': tags,
  //     'category': category.toJson(),
  //     'galleries': galleries.map((gallery) => gallery.toJson()).toList(),
  //     'created_at': createdAt.toString(),
  //     'updated_at': updatedAt.toString(),
  //   };
  // }
}
