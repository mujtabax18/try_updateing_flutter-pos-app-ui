import 'product_model.dart';

class OrderItemModel {
  const OrderItemModel({
    required this.product,
    required this.quantity,
  });

  final ProductModel product;
  final int quantity;

  double get total {
    return product.price * quantity;
  }

  String get formattedTotal {
    return '\$${total.toStringAsFixed(2)}';
  }
}