class Product {
  String? title;
  late num price;
  String? image;

  Product({
    required this.title,
    required this.price,
    required this.image,
  });

  Product.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    price = json['price'];
    image = json['image'];
  }
}

class Rating {
  double? rate;
  int? count;

  Rating({required this.rate, required this.count});

  Rating.fromJson(Map<String, dynamic> json) {
    rate = json['rate'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rate'] = this.rate;
    data['count'] = this.count;
    return data;
  }
}
