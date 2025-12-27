import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/colors.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Row(
      children: [
        /// 🔍 SEARCH TEXT FIELD
        Expanded(
          child: Container(
            height: 48,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: AppColors.card,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'assets/Frame.svg',
                  width: 20,
                  height: 20,
                  color: AppColors.textLight,
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search 3000+ mutual funds',
                      border: InputBorder.none,
                      isDense: true,
                    ),
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(width: 12),

        /// 📷 ICON BOX (SEPARATE)
        Container(
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            color: AppColors.card,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: SvgPicture.asset(
              'assets/vector.svg',
              width: 22,
              height: 22,
              color: AppColors.textDark,
            ),
          ),
        ),
      ],
    );
  }
}
