import 'package:flutter/material.dart';
import 'package:taxi_go_driver/Utils/colors.dart';

class WalletItem extends StatelessWidget {
  const WalletItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Money Deposited by Admin',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text(
                '5623',
                style: TextStyle(
                    color: AppColors.kredMap,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '5th Sep 2022 02:00 PM',
                style: TextStyle(
                    color: Color(0xff868686),
                    fontSize: 12,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon:
                const Icon(Icons.add, size: 30, color: AppColors.kPrimaryColor),
          ),
        ],
      ),
    );
  }
}
