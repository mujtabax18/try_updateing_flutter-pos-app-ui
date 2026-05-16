import 'package:flutter/material.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/widgets/app_card.dart';
import '../../../core/widgets/app_primary_button.dart';
import '../models/order_item_model.dart';

class OrderSummaryCard extends StatelessWidget {
  const OrderSummaryCard({
    super.key,
    required this.orderItems,
  });

  final List<OrderItemModel> orderItems;

  double get subtotal {
    return orderItems.fold<double>(
      0,
          (previousValue, item) => previousValue + item.total,
    );
  }

  double get tax {
    return subtotal * 0.1;
  }

  double get total {
    return subtotal + tax;
  }

  String _formatAmount(double value) {
    return '\$${value.toStringAsFixed(2)}';
  }

  @override
  Widget build(BuildContext context) {
    return AppCard(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _SummaryRow(
            label: 'Sub Total',
            value: _formatAmount(subtotal),
          ),
          const SizedBox(height: 20),
          _SummaryRow(
            label: 'Tax',
            value: _formatAmount(tax),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            height: 2,
            width: double.infinity,
            color: AppColors.white,
          ),
          _SummaryRow(
            label: 'Total',
            value: _formatAmount(total),
          ),
          const SizedBox(height: 30),
          AppPrimaryButton(
            label: 'Print Bills',
            icon: Icons.print,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _SummaryRow extends StatelessWidget {
  const _SummaryRow({
    required this.label,
    required this.value,
  });

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: AppTextStyles.summaryLabel),
        Text(value, style: AppTextStyles.summaryLabel),
      ],
    );
  }
}