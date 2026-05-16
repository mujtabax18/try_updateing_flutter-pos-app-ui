import 'package:flutter/material.dart';

import '../../../core/widgets/search_box.dart';
import '../../../core/widgets/section_header.dart';
import '../data/pos_mock_data.dart';
import '../models/menu_category_model.dart';
import '../models/order_item_model.dart';
import '../models/product_model.dart';
import '../widgets/menu_category_card.dart';
import '../widgets/order_summary_card.dart';
import '../widgets/order_tile.dart';
import '../widgets/product_card.dart';

class PosHomePage extends StatefulWidget {
  const PosHomePage({super.key});

  @override
  State<PosHomePage> createState() => _PosHomePageState();
}

class _PosHomePageState extends State<PosHomePage> {
  String selectedCategoryId = 'burger';
  String searchQuery = '';

  List<MenuCategoryModel> get categories => PosMockData.categories;

  List<ProductModel> get filteredProducts {
    return PosMockData.products.where((product) {
      final matchesCategory = product.categoryId == selectedCategoryId;
      final matchesSearch = product.title.toLowerCase().contains(
        searchQuery.toLowerCase().trim(),
      );

      return matchesCategory && matchesSearch;
    }).toList();
  }

  List<OrderItemModel> get orderItems => PosMockData.orderItems;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 14,
          child: Column(
            children: [
              SectionHeader(
                title: 'Lorem Restaurant',
                subtitle: '20 October 2022',
                action: SearchBox(
                  onChanged: (value) {
                    setState(() {
                      searchQuery = value;
                    });
                  },
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  itemCount: categories.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 26),
                  itemBuilder: (context, index) {
                    final category = categories[index];

                    return MenuCategoryCard(
                      category: category,
                      isActive: selectedCategoryId == category.id,
                      onTap: () {
                        setState(() {
                          selectedCategoryId = category.id;
                        });
                      },
                    );
                  },
                ),
              ),
              Expanded(
                child: GridView.builder(
                  itemCount: filteredProducts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 1 / 1.2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) {
                    final product = filteredProducts[index];

                    return ProductCard(product: product);
                  },
                ),
              ),
            ],
          ),
        ),
        const Expanded(
          flex: 1,
          child: SizedBox(),
        ),
        Expanded(
          flex: 5,
          child: Column(
            children: [
              const SectionHeader(
                title: 'Order',
                subtitle: 'Table 8',
                action: SizedBox(),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: orderItems.length,
                  itemBuilder: (context, index) {
                    return OrderTile(orderItem: orderItems[index]);
                  },
                ),
              ),
              OrderSummaryCard(orderItems: orderItems),
            ],
          ),
        ),
      ],
    );
  }
}