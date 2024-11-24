import 'package:flutter/material.dart';
import 'package:taxi_go_driver/Presentaion/history/widgets/custom_background_appbar.dart';
import 'package:taxi_go_driver/Presentaion/history/widgets/history_item.dart';
import 'package:taxi_go_driver/Presentaion/history/widgets/monthly_drop_menu.dart';

class HistoryView extends StatelessWidget {
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundAppBar(
        actions: [
          MonthlyDropMenu(),
        ],
        appBarTitle: "History",
        widget: Padding(
          padding: EdgeInsets.fromLTRB(30, 44, 30, 100),
          child: Column(
            children: [
              HistoryItem(
                isCompleted: true,
              ),
              HistoryItem(
                isCompleted: false,
              ),
              HistoryItem(
                isCompleted: true,
              ),
            ],
          ),
        ));
  }
}
