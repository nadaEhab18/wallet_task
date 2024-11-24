import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:taxi_go_driver/Utils/text.dart';
import 'package:taxi_go_driver/widgets/custom_back_arrow.dart';

class DefaultAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const DefaultAppbar({
    super.key,
    required this.title,
    this.isDrawer,
    this.widget,
    this.textColor,
    this.systemOverlayStyle, this.actions,
  });

  final bool? isDrawer;
  final Widget? widget;
  final Color? textColor;
  final SystemUiOverlayStyle? systemOverlayStyle;
  final List<Widget>? actions;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      scrolledUnderElevation: 0,
      systemOverlayStyle: systemOverlayStyle ??
          const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
          ),
      centerTitle: true,
      leading: isDrawer == true ? widget : const CustomBackArrow(),
      title: CustomText(
        text: title,
        fontSize: 19,
        colorText: textColor ?? Colors.black,
        fontWeight: FontWeight.w600,
      ),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
