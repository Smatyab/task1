import 'package:flutter/material.dart';

import '../utils/category_item_widget.dart';
import '../utils/colors.dart';

class CategoryRowWidget extends StatelessWidget {
  const CategoryRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Category",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: AppColors.textDark,
          ),
        ),
        const SizedBox(height: 12),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CategoryItemWidget(
              iconPath: 'assets/mutual_fund.svg',
              title: 'Mutual Funds',
              onTap: () {},
            ),
            CategoryItemWidget(
              iconPath: 'assets/fixdeposite.svg',
              title: 'Fixed Deposit',
              onTap: () {},
            ),
            CategoryItemWidget(
              iconPath: 'assets/investment.svg',
              title: 'Investment',
              onTap: () {},
            ),
            CategoryItemWidget(
              iconPath: 'assets/sip.svg',
              title: 'SIP',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
