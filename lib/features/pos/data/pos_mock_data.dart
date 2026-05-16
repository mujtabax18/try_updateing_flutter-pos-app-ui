import '../../../core/constants/app_assets.dart';
import '../models/menu_category_model.dart';
import '../models/order_item_model.dart';
import '../models/product_model.dart';

class PosMockData {
  PosMockData._();

  static const List<MenuCategoryModel> categories = [
    MenuCategoryModel(
      id: 'burger',
      title: 'Burger',
      iconPath: AppAssets.burgerIcon,
    ),
    MenuCategoryModel(
      id: 'noodles',
      title: 'Noodles',
      iconPath: AppAssets.noodlesIcon,
    ),
    MenuCategoryModel(
      id: 'drinks',
      title: 'Drinks',
      iconPath: AppAssets.drinksIcon,
    ),
    MenuCategoryModel(
      id: 'desserts',
      title: 'Desserts',
      iconPath: AppAssets.dessertsIcon,
    ),
  ];

  static final List<ProductModel> products = [
    ProductModel(
      id: '1',
      categoryId: 'burger',
      title: 'Original Burger',
      imagePath: AppAssets.productImage('1.png'),
      price: 5.99,
      stockCount: 11,
    ),
    ProductModel(
      id: '2',
      categoryId: 'burger',
      title: 'Double Burger',
      imagePath: AppAssets.productImage('2.png'),
      price: 10.99,
      stockCount: 10,
    ),
    ProductModel(
      id: '3',
      categoryId: 'burger',
      title: 'Cheese Burger',
      imagePath: AppAssets.productImage('3.png'),
      price: 6.99,
      stockCount: 7,
    ),
    ProductModel(
      id: '4',
      categoryId: 'burger',
      title: 'Double Cheese Burger',
      imagePath: AppAssets.productImage('4.png'),
      price: 12.99,
      stockCount: 20,
    ),
    ProductModel(
      id: '5',
      categoryId: 'burger',
      title: 'Spicy Burger',
      imagePath: AppAssets.productImage('5.png'),
      price: 7.39,
      stockCount: 12,
    ),
    ProductModel(
      id: '6',
      categoryId: 'burger',
      title: 'Special Black Burger',
      imagePath: AppAssets.productImage('6.png'),
      price: 7.39,
      stockCount: 39,
    ),
    ProductModel(
      id: '7',
      categoryId: 'burger',
      title: 'Special Cheese Burger',
      imagePath: AppAssets.productImage('7.png'),
      price: 8.00,
      stockCount: 2,
    ),
    ProductModel(
      id: '8',
      categoryId: 'burger',
      title: 'Jumbo Cheese Burger',
      imagePath: AppAssets.productImage('8.png'),
      price: 15.99,
      stockCount: 2,
    ),
    ProductModel(
      id: '9',
      categoryId: 'burger',
      title: 'Spicy Burger',
      imagePath: AppAssets.productImage('9.png'),
      price: 7.39,
      stockCount: 12,
    ),
    ProductModel(
      id: '10',
      categoryId: 'burger',
      title: 'Special Black Burger',
      imagePath: AppAssets.productImage('10.png'),
      price: 7.39,
      stockCount: 39,
    ),
    ProductModel(
      id: '11',
      categoryId: 'burger',
      title: 'Special Cheese Burger',
      imagePath: AppAssets.productImage('11.png'),
      price: 8.00,
      stockCount: 2,
    ),
    ProductModel(
      id: '12',
      categoryId: 'burger',
      title: 'Jumbo Cheese Burger',
      imagePath: AppAssets.productImage('12.png'),
      price: 15.99,
      stockCount: 2,
    ),
  ];

  static List<OrderItemModel> get orderItems {
    return [
      OrderItemModel(product: products[0], quantity: 2),
      OrderItemModel(product: products[1], quantity: 3),
      OrderItemModel(product: products[5], quantity: 2),
      OrderItemModel(product: products[3], quantity: 2),
    ];
  }
}