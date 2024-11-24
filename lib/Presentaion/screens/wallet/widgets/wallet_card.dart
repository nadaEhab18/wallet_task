import 'package:flutter/material.dart';
import 'package:taxi_go_driver/Utils/colors.dart';

class WalletCard extends StatelessWidget {
  const WalletCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: ShapeDecoration(
        shadows: [
          BoxShadow(
              blurRadius: 6,
              color: Colors.black.withOpacity(0.049),
              offset: const Offset(0, 1),
              blurStyle: BlurStyle.inner)
        ],
        color: AppColors.kpureWhite,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: AppColors.kborderColor),
        ),
      ),
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Available Balance',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 6),
          Text(
            '5623 \$',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
