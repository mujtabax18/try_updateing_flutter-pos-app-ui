import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../models/navigation_item_model.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({
    super.key,
    required this.item,
    required this.isActive,
    required this.onTap,
  });

  final NavigationItemModel item;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 9),
      child: GestureDetector(
        onTap: onTap,
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            curve: Curves.slowMiddle,
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: isActive ? AppColors.primary : AppColors.transparent,
            ),
            child: Column(
              children: [
                Icon(
                  item.icon,
                  color: AppColors.white,
                ),
                const SizedBox(height: 5),
                Text(
                  item.title,
                  style: AppTextStyles.sideMenuLabel,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}