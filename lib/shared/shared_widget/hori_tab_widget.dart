import '../shared_theme/shared_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllFood extends StatelessWidget {
  const AllFood({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                        padding: EdgeInsets.all(6),
                        margin: EdgeInsets.only(
                            top: 15, right: 5, left: 3, bottom: 15),
                        height: 32.h,
                        width: 32.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: SharedColors.backGroundColor),
                        child: Icon(Icons.short_text_rounded,
                            color: SharedColors.blackColor),
                      );
  }
}



class SaladsFood extends StatelessWidget {
  const SaladsFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                          padding: EdgeInsets.all(6),
                          // margin: EdgeInsets.only(top: 15, right: 5, bottom: 15),
                          height: 35.h,
                          width: 81.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: SharedColors.backGroundColor),
                          child: Text('Salads',
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: SharedColors.blackColor)));
  }
}



class PizzaFood extends StatelessWidget {
  const PizzaFood({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                          padding: EdgeInsets.all(6),
                          //margin: EdgeInsets.only(top: 15, right: 5, bottom: 15),
                          height: 35.h,
                          width: 82.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: SharedColors.backGroundColor),
                          child: Text('  Pizza',
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: SharedColors.blackColor)));
  }
}

class BeveragesDrink extends StatelessWidget {
  const BeveragesDrink({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                          padding: EdgeInsets.all(6),
                          //margin: EdgeInsets.only(top: 15, right: 5, bottom: 15),
                          height: 35.h,
                          width: 109.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: SharedColors.backGroundColor),
                          child: Text('Beverages',
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: SharedColors.blackColor)));
  }
}


class SnacksFood extends StatelessWidget {
  const SnacksFood({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                          padding: EdgeInsets.all(6),
                          // margin: EdgeInsets.only(top: 15, right: 5, bottom: 15),
                          height: 35.h,
                          width: 88.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: SharedColors.backGroundColor),
                          child: Text(' Snacks',
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: SharedColors.blackColor)));
  }
}