import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({
    super.key,
    this.hintText = 'Search menu here...',
    this.onChanged,
  });

  final String hintText;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: AppColors.card,
      ),
      child: TextField(
        onChanged: onChanged,
        style: const TextStyle(
          color: AppColors.textPrimary,
          fontSize: 12,
        ),
        cursorColor: AppColors.primary,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: const Icon(
            Icons.search,
            color: AppColors.textSecondary,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: AppColors.textSecondary,
            fontSize: 11,
          ),
        ),
      ),
    );
  }
}