import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/colors.dart';

class AdsCardWidget extends StatefulWidget {
  const AdsCardWidget({super.key});

  @override
  State<AdsCardWidget> createState() => _AdsCardWidgetState();
}

class _AdsCardWidgetState extends State<AdsCardWidget> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    if (!isVisible) return const SizedBox();

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: Text(
              'Bajaj Finance hikes FD rates\n'
              '3Y RM FD at 7.2% pa.'
              'Check all rates',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.textDark,
              ),
            ),
          ),

          SvgPicture.asset('assets/Asset 1 1.svg'),

          GestureDetector(
            onTap: () {
              setState(() {
                isVisible = false;
              });
            },
            child: SvgPicture.asset('assets/Vector (5).svg'),
          ),
        ],
      ),
    );
  }
}
