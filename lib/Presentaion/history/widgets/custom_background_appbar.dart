import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:taxi_go_driver/Utils/colors.dart';
import 'package:taxi_go_driver/Utils/images.dart';
import 'package:taxi_go_driver/widgets/custom_dawer.dart';
import 'package:taxi_go_driver/widgets/default_appbar.dart';

class CustomBackgroundAppBar extends StatefulWidget {
  const CustomBackgroundAppBar({
    super.key,
    required this.widget,
    required this.appBarTitle, this.actions,
  });

  final Widget widget;
  final String appBarTitle;
  final List<Widget>? actions;

  @override
  State<CustomBackgroundAppBar> createState() => _CustomBackgroundAppBarState();
}

class _CustomBackgroundAppBarState extends State<CustomBackgroundAppBar> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppbar(
        actions: widget.actions,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
        ),
        isDrawer: true,
        widget: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 10),
          child: GestureDetector(
              onTap: () {
                scaffoldKey.currentState!.openDrawer();
              },
              child: SvgPicture.asset(AssetImages.drawer)),
        ),
        title: widget.appBarTitle,
        textColor: Colors.white,
      ),
      key: scaffoldKey,
      drawer: CustomDrawer(
        scaffoldKey: scaffoldKey,
      ),
      backgroundColor: AppColors.kPrimaryColor,
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: const ShapeDecoration(
                              color: AppColors.kbackgroundColor,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30)))),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [widget.widget],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
