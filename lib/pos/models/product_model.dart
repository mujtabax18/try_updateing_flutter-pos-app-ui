class ProductModel {
  const ProductModel({
    required this.id,
    required this.categoryId,
    required this.title,
    required this.imagePath,
    required this.price,
    required this.stockCount,
  });

  final String id;
  final String categoryId;
  final String title;
  final String imagePath;
  final double price;
  final int stockCount;

  String get formattedPrice {
    return '\$${price.toStringAsFixed(2)}';
  }

  String get stockText {
    return '$stockCount item';
  }
}