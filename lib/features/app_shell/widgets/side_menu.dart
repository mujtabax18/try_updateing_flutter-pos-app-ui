import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../models/navigation_item_model.dart';
import 'side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
    required this.activePage,
    required this.items,
    required this.onItemSelected,
  });

  final String activePage;
  final List<NavigationItemModel> items;
  final ValueChanged<String> onItemSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, right: 12, left: 12),
      child: Column(
        children: [
          const _Logo(),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];

                return SideMenuItem(
                  item: item,
                  isActive: activePage == item.title,
                  onTap: () => onItemSelected(item.title),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _Logo extends StatelessWidget {
  const _Logo();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.primary,
          ),
          child: const Icon(
            Icons.fastfood,
            color: AppColors.white,
            size: 14,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'POSFood',
          style: AppTextStyles.appLogo,
        ),
      ],
    );
  }
}