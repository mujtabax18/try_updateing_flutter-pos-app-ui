class AppAssets {
  AppAssets._();

  static const String burgerIcon = 'assets/icons/icon-burger.png';
  static const String noodlesIcon = 'assets/icons/icon-noodles.png';
  static const String drinksIcon = 'assets/icons/icon-drinks.png';
  static const String dessertsIcon = 'assets/icons/icon-desserts.png';

  static String productImage(String fileName) {
    return 'assets/items/$fileName';
  }
}