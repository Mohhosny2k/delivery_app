import 'package:delivery/food/food_controller.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../food/food_model.dart';
import 'item_buy_screen.dart';
import '../../shared/shared_theme/shared_font.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../shared/shared_theme/shared_color.dart';
import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  //FoodModel food;
  // MyHeaderDrawer(this.food,{super.key});
  @override
  _MyHeaderDrawerState createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: SharedColors.lightBlueApp,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                SharedColors.blackWhiteColor,
                SharedColors.whiteColor,
              ],
            ),
          ),
          width: double.infinity,
          height: 200,
          padding: EdgeInsets.only(top: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://media.licdn.com/dms/image/C4D03AQEOdm8QprggmQ/profile-displayphoto-shrink_400_400/0/1634314524830?e=1678924800&v=beta&t=b1FP8DuJ_sm8kaFFTc5zgwID-G-OtSWD8P130EXkHus'),
                  ),
                ),
              ),
              Text(
                'Mohamed Hosny',
                style:
                    TextStyle(color: SharedColors.blackColor, fontSize: 19.sp),
              ),
              Text(
                "mohhosny2k@gmail.com",
                style: TextStyle(
                  color: SharedColors.whiteColor,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            ListTile(
              leading: Text(
                'PhoneNumber',
                style: SharedFonts.subBlackFont,
              ),
              title: Text(
                '01114553201',
                style: SharedFonts.subGreyFont,
              ),
            ),
            ListTile(
              leading: Text(
                'ItemBuy',
                style: SharedFonts.subBlackFont,
              ),
              trailing: Icon(Icons.arrow_forward_ios_rounded),
              onTap: () async {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => ItemBuyScreen()));
              },
            ),
          ],
        ),
      ],
    );
  }
}
