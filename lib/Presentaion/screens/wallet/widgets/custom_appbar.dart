
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxi_go_driver/Utils/Strings.dart';
import 'package:taxi_go_driver/Utils/colors.dart';
import 'package:taxi_go_driver/Utils/images.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AppBar(
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: AppColors.kwhite,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Color(0xffD1D1D1),
            ),
          ),
          child: Center(
            child: IconButton(
              icon:  SvgPicture.asset(AssetImages.backArrow
              ),
              onPressed: (){
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
      title: Text(
        'Wallet',
        style: TextStyle(
          fontFamily: kModelFont,
          fontSize: 28,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
    )
    ;
  }
}
