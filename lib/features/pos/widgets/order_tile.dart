import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/app_card.dart';
import '../models/order_item_model.dart';

class OrderTile extends StatelessWidget {
  const OrderTile({
    super.key,
    required this.orderItem,
  });

  final OrderItemModel orderItem;

  @override
  Widget build(BuildContext context) {
    final product = orderItem.product;

    return AppCard(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.surface,
              image: DecorationImage(
                image: AssetImage(product.imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.orderTitle,
                ),
                const SizedBox(height: 10),
                Text(
                  product.formattedPrice,
                  style: AppTextStyles.orderPrice,
                ),
              ],
            ),
          ),
          Text(
            '${orderItem.quantity} x',
            style: AppTextStyles.orderQty,
          ),
        ],
      ),
    );
  }
}