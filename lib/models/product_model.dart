class Product {
  final String id;
  final String title;
  final String imagePath;
  final double price;
  final double rating;
  bool isSaved;

  Product(
      {required this.id,
      required this.title,
      required this.imagePath,
      required this.price,
      required this.rating,
      this.isSaved = false});
}
