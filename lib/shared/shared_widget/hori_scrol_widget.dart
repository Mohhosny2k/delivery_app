import '../shared_theme/shared_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Itemone extends StatefulWidget {
  int? value;
 Itemone(this.value,{super.key});

  @override
  State<Itemone> createState() => _ItemoneState();
}

class _ItemoneState extends State<Itemone> {
  @override
  Widget build(BuildContext context) {
    return    Container(
                        margin: EdgeInsets.all(6),
                        padding: EdgeInsets.all(5),
                        height: 6.h,
                        width: 75.w,
                        decoration: BoxDecoration(
                            color:widget. value==0?SharedColors.blackColor:SharedColors.greyApp,
                            borderRadius: BorderRadius.circular(25)),
                      );
  }
}


class ItemTwo extends StatefulWidget {
  int? value;
 ItemTwo(this.value,{super.key});

  @override
  State<ItemTwo> createState() => _ItemTwoState();
}

class _ItemTwoState extends State<ItemTwo> {
  @override
  Widget build(BuildContext context) {
    return  Container(
                        padding: EdgeInsets.all(6),
                        margin: EdgeInsets.all(5),
                        height: 6.h,
                        width: 75.w,
                        decoration: BoxDecoration(
                            color:widget. value==1?SharedColors.blackColor:SharedColors.greyApp,
                            borderRadius: BorderRadius.circular(25)),
                      );
  }
}


class ItemThree extends StatefulWidget {
  int? value;
 ItemThree(this.value,{super.key});

  @override
  State<ItemThree> createState() => _ItemThreeState();
}

class _ItemThreeState extends State<ItemThree> {
  @override
  Widget build(BuildContext context) {
    return  Container(
                        margin: EdgeInsets.all(6),
                        padding: EdgeInsets.all(5),
                        height: 6.h,
                        width: 75.w,
                        decoration: BoxDecoration(
                            color:widget.value==2?SharedColors.blackColor:SharedColors.greyApp,
                            borderRadius: BorderRadius.circular(25)),
                      );
  }
}




class ItemFour extends StatefulWidget {
  int? value;
 ItemFour(this.value,{super.key});

  @override
  State<ItemFour> createState() => _ItemFourState();
}

class _ItemFourState extends State<ItemFour> {
  @override
  Widget build(BuildContext context) {
    return Container(
                        margin: EdgeInsets.all(6),
                        padding: EdgeInsets.all(5),
                        height: 6.h,
                        width: 75.w,
                        decoration: BoxDecoration(
                            color: widget.value==3?SharedColors.blackColor:SharedColors.greyApp,
                            borderRadius: BorderRadius.circular(25)),
                      );
  }
}



                   
                     