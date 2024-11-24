import 'package:flutter/material.dart';
import 'package:taxi_go_driver/Presentaion/history/widgets/complete_cancel_buttons.dart';
import 'package:taxi_go_driver/Utils/colors.dart';
import 'package:taxi_go_driver/Utils/text.dart';

class HistoryDetails extends StatelessWidget {
  const HistoryDetails({super.key, required this.isCompleted});

  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              side: BorderSide(color: AppColors.kborderColor))),
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: Row(
          children: [
            CompleteCancelButtons(
              isCompleted: isCompleted,
            ),
            const Spacer(),
            const Column(
              children: [
                CustomText(
                  text: "Price",
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  colorText: AppColors.kdarkGrey,
                ),
                CustomText(
                  text: "\$9,00",
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  colorText: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
