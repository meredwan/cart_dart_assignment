class Product {
  final String title;
  final String description;
  final String image;
  final double price;

  Product({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
  });
}

final List<Product> products = [
  Product(
    title: "NMD_R1 Shoes",
    description: "Running Shoes",
    image: "assets/images/pngegg.png",
    price: 180,
  ),
  Product(
    title: "NMD_R1 V2 Shoes",
    description: "Special Running Shoes",
    image: "assets/images/pngegg.png",
    price: 120,
  ),
  Product(
    title: "Ultraboost 20 shoes",
    description: "Running Shoes",
    image: "assets/images/pngegg.png",
    price: 160,
  ),
];
