import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi_go_driver/Presentaion/history/widgets/from_to_widget.dart';
import 'package:taxi_go_driver/Presentaion/history/widgets/history_details.dart';
import 'package:taxi_go_driver/Utils/colors.dart';
import 'package:taxi_go_driver/Utils/images.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key, required this.isCompleted});

  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 19.0),
      child: Container(
        decoration: ShapeDecoration(
            shadows: [
              BoxShadow(
                  blurRadius: 8,
                  color: Colors.black.withOpacity(0.039),
                  offset: const Offset(0, 3.6),
                  blurStyle: BlurStyle.inner)
            ],
            color: AppColors.kpureWhite,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: const BorderSide(color: AppColors.kborderColor))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FromToWidget(
                    dist: "University",
                    image: AssetImages.from,
                    time: "11:24 AM",
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SvgPicture.asset(AssetImages.dotes),
                  ),
                  const FromToWidget(
                    dist: "any place",
                    image: AssetImages.to,
                    time: "11:52 AM",
                  ),
                ],
              ),
            ),
            HistoryDetails(
              isCompleted: isCompleted,
            )
          ],
        ),
      ),
    );
  }
}
