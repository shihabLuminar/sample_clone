class Product {
  final String imageUrl;
  final String name;
  final String description;
  final String price;
  final double rating;
  final List<String> size;
  final bool isFavourite;

  Product({
    required this.imageUrl,
    required this.name,
    required this.description,
    required this.price,
    required this.rating,
    required this.size,
    required this.isFavourite,
  });
}
