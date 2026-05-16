import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../models/menu_category_model.dart';

class MenuCategoryCard extends StatelessWidget {
  const MenuCategoryCard({
    super.key,
    required this.category,
    required this.isActive,
    required this.onTap,
  });

  final MenuCategoryModel category;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          width: 180,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.card,
            border: Border.all(
              color: isActive ? AppColors.primary : AppColors.card,
              width: 3,
            ),
          ),
          child: Row(
            children: [
              Image.asset(
                category.iconPath,
                width: 38,
              ),
              const SizedBox(width: 8),
              Text(
                category.title,
                style: AppTextStyles.categoryTitle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}