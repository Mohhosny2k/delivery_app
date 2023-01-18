import '../shared_theme/shared_color.dart';
import '../shared_theme/shared_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class Screen extends StatelessWidget {
  Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      width: 350.w,
      margin: EdgeInsets.only(top: 12),
      child:
          Stack(clipBehavior: Clip.none, fit: StackFit.passthrough, children: [
        Container(
          margin: EdgeInsets.only(top: 18, left: 11, right: 11, bottom: 8),
          height: 205.h,
          width: 350.w,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  SharedColors.lightBlueApp,
                  SharedColors.pinkColor,
                ],
              ),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              SizedBox(
                height: 140.h,
              ),
              ListTile(
                leading: Text(
                  'Full slices of pizza\n with delicious salami',
                  style: SharedFonts.subBlackFont,
                ),
                trailing: Container(
                  padding: EdgeInsets.all(8),
                  height: 30.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      color: SharedColors.blackColorApp,
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    ' \$12.40',
                    style: TextStyle(
                        color: SharedColors.whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 90.h,
          top: 0.h,
          left: 18.w,
          right: 28.w,
          child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Image.asset('assets/images/klipartz.com.png',fit: BoxFit.fill,)

              ),
          // child: BuildImagesScreen(widget.imagesList[index]),
        )
      ]),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      width: 350.w,
      margin: EdgeInsets.only(top: 12),
      child:
          Stack(clipBehavior: Clip.none, fit: StackFit.passthrough, children: [
        Container(
          margin: EdgeInsets.only(top: 18, left: 11, right: 11, bottom: 8),
          height: 205.h,
          width: 350.w,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  SharedColors.backgroundFood,
                  SharedColors.pinkColor,
                ],
              ),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              SizedBox(
                height: 140.h,
              ),
              ListTile(
                leading: Text(
                  'Greek salad Caesar salad\n  Wrap Bean salad Pasta salad,vegetable Salad, leaf Vegetable, food',softWrap: true,maxLines: 2,
                  style: SharedFonts.subBlackFont,
                ),
                trailing: Container(
                  padding: EdgeInsets.all(8),
                  height: 30.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      color: SharedColors.blackColorApp,
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    ' \$12.40',
                    style: TextStyle(
                        color: SharedColors.whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 90.h,
          top: 0.h,
          left: 18.w,
          right: 28.w,
          child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Image.asset('assets/images/saled.png',fit: BoxFit.fill,)
              ),
         
        )
      ]),
    );
  }
}

class ScreenThree extends StatelessWidget {
  ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      width: 350.w,
      margin: EdgeInsets.only(top: 12),
      child:
          Stack(clipBehavior: Clip.none, fit: StackFit.passthrough, children: [
        Container(
          margin: EdgeInsets.only(top: 18, left: 11, right: 11, bottom: 8),
          height: 205.h,
          width: 350.w,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  SharedColors.backGroundColor,
                  SharedColors.purpleApp,
                ],
              ),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              SizedBox(
                height: 140.h,
              ),
              ListTile(
                leading: Text(
                  'Originally available only \n in a single nondescript flavor \n sold in a tall and slim silver-blue can,',softWrap: true,maxLines: 2,
                  style: SharedFonts.subBlackFont,
                ),
                trailing: Container(
                  padding: EdgeInsets.all(8),
                  height: 30.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      color: SharedColors.blackColorApp,
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    ' \$12.00',
                    style: TextStyle(
                        color: SharedColors.whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 90.h,
          top: 0.h,
          left: 18.w,
          right: 28.w,
          child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Image.asset('assets/images/d.png',fit: BoxFit.fill,)
              ),
         
        )
      ]),
    );
  }
}

class ScreenFour extends StatelessWidget {
  ScreenFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      width: 350.w,
      margin: EdgeInsets.only(top: 12),
      child:
          Stack(clipBehavior: Clip.none, fit: StackFit.passthrough, children: [
        Container(
          margin: EdgeInsets.only(top: 18, left: 11, right: 11, bottom: 8),
          height: 205.h,
          width: 350.w,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  SharedColors.purpleApp,
                  SharedColors.lightBlueApp,
                ],
              ),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              SizedBox(
                height: 140.h,
              ),
              ListTile(
                leading: Text(
                  'Mixed Nuts Gift Baskets\n Roasted Cashews, Gift, Miscellaneous, Dried Fruit',softWrap: true,maxLines: 2,
                  style: SharedFonts.subBlackFont,
                ),
                trailing: Container(
                  padding: EdgeInsets.all(8),
                  height: 30.h,
                  width: 60.w,
                  decoration: BoxDecoration(
                      color: SharedColors.blackColorApp,
                      borderRadius: BorderRadius.circular(25)),
                  child: Text(
                    ' \$16',
                    style: TextStyle(
                        color: SharedColors.whiteColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 90.h,
          top: 0.h,
          left: 18.w,
          right: 28.w,
          child: Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Image.asset('assets/images/dd.png',fit: BoxFit.fill,)
              ),
         
        )
      ]),
    );
  }
}