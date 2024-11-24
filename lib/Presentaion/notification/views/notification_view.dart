import 'package:flutter/material.dart';
import 'package:taxi_go_driver/Presentaion/notification/widgets/notifications_listview.dart';
import 'package:taxi_go_driver/Utils/colors.dart';
import 'package:taxi_go_driver/widgets/default_appbar.dart';


class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.kbackgroundColor,
      appBar: DefaultAppbar(
        title: "Notification",
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 30, right: 21, top: 20),
        child: Column(
          children: [
            NotificationsListView(),
          ],
        ),
      ),
    );
  }
}
