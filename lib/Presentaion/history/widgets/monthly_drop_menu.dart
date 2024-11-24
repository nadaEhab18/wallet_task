import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi_go_driver/Utils/colors.dart';
import 'package:taxi_go_driver/Utils/images.dart';
import 'package:taxi_go_driver/Utils/text.dart';

class MonthlyDropMenu extends StatelessWidget {
  const MonthlyDropMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0),
      child: Container(
        height: 16,
        width: 78,
        decoration: ShapeDecoration(
            color: AppColors.kdropMenu,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            )),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          child: Row(
            children: [
              const CustomText(
                text: "This Month",
                fontSize: 8,
                fontWeight: FontWeight.w400,
                colorText: AppColors.kwhite,
              ),
              const Spacer(),
              SizedBox(child: SvgPicture.asset(AssetImages.dropMenu))
            ],
          ),
        ),
      ),
    );
  }
}
