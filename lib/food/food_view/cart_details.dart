import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../food_controller.dart';
import '../food_model.dart';
import '../food_state.dart';
import '../../shared/shared_theme/shared_color.dart';
import '../../shared/shared_theme/shared_font.dart';

class CartDetailsWidget extends StatefulWidget {
  CartDetailsWidget(this.food, {super.key});
  FoodModel food;
  @override
  State<CartDetailsWidget> createState() => _CartDetailsWidgetState();
}

class _CartDetailsWidgetState extends State<CartDetailsWidget> {
  //int numberItem = 1;
  int numberCutlery = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.2),
      body: ListView(children: [
        Container(
          alignment: Alignment.topLeft,
          height: 100.h,
          decoration: BoxDecoration(
            color: Colors.transparent,
          ),
          child: IconButton(
            onPressed: () {
              print('re');
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: SharedColors.purpleApp,
            ),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: SharedColors.whiteColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' We will deliver in \n 24 minutes to the address:',
                  softWrap: true,
                  style: SharedFonts.primaryBlackFont,
                ),
                ListTile(
                  leading: Text(
                    '100a Ealing Rd',
                    style: SharedFonts.subBlackFont,
                  ),
                  title: Text(
                    'Change address',
                    style: SharedFonts.subGreyFont,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15),
                  height: 145.h,
                  width: double.infinity,
                  //color: SharedColors.pinkColor,
                  child: Row(
                    children: [
                      SizedBox(
                          height: 220.h,
                          width: 110.w,
                          child: Image.network(
                            '${widget.food.image}',
                            fit: BoxFit.fill,
                          )),
                      SizedBox(
                        width: 2.h,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  width: 130.w,
                                  child: Text('${widget.food.nameFood}',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          color: SharedColors.blackColor,
                                          fontSize: 15.sp)),
                                ),
                                // SizedBox(
                                //   width: 2.w,
                                // ),
                                Text('1=>\$${widget.food.price}',
                                    style: TextStyle(
                                        color: SharedColors.blackColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15.sp)), //fontSize: 11.sp)),
                              ],
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: SharedColors.greyApp),
                                    child: IconButton(
                                      onPressed: () {
                                        // setState(() {
                                        //   numberItem -= 1;
                                        // });
                                        BlocProvider.of<FoodController>(context)
                                            .ItemDecrement();
                                        BlocProvider.of<FoodController>(context)
                                            .CalculatePrice(widget.food);
                                      },
                                      icon: Icon(
                                        Icons.remove,
                                        size: 24.sp,
                                      ),
                                    ),
                                  ),
                                  BlocBuilder<FoodController, FoodState>(
                                    builder: (context, state) {
                                      return Text(
                                        '${BlocProvider.of<FoodController>(context).numberEat}', // '${numberItem}',
                                        style: SharedFonts.subBlackFont,
                                      );
                                    },
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: SharedColors.greyApp),
                                    child: IconButton(
                                      onPressed: () {
                                        // setState(() {
                                        //   numberItem += 1;
                                        // });
                                        BlocProvider.of<FoodController>(context)
                                            .ItemIncrement();
                                        BlocProvider.of<FoodController>(context)
                                            .CalculatePrice(widget.food);
                                      },
                                      icon: Icon(
                                        Icons.add,
                                        size: 24.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                    height: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 0,
                    color: SharedColors.greyColor),
                ListTile(
                  leading: Image.asset('assets/images/knif.png'),
                  title: Text(
                    'Cutlery',
                    style: SharedFonts.subBlackFont,
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: SharedColors.greyApp),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              numberCutlery -= 1;
                            });
                          },
                          icon: Icon(
                            Icons.remove,
                            size: 24.sp,
                          ),
                        ),
                      ),
                      Text(
                        '${numberCutlery}',
                        style: SharedFonts.subBlackFont,
                      ),
                      Container(
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: SharedColors.greyApp),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              numberCutlery += 1;
                            });
                          },
                          icon: Icon(
                            Icons.add,
                            size: 24.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                    height: 20,
                    thickness: 1,
                    indent: 20,
                    endIndent: 0,
                    color: SharedColors.greyColor),
                ListTile(
                  title: Text(
                    'Delivery',
                    style: SharedFonts.subBlackFont,
                  ),
                  subtitle: Text('Free delivery from \$30',
                      style: SharedFonts.subGreyFont),
                  trailing: Text(
                    '\$0,00',
                    style: SharedFonts.subBlackFont,
                  ),
                ),
                SizedBox(
                  height: 31.h,
                ),
                Text('    Payment method', style: SharedFonts.subGreyFont),
                ListTile(
                  leading: Image.asset('assets/images/pay.png'),
                  title: Text(
                    'Apple pay',
                    style: SharedFonts.subBlackFont,
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: SharedColors.blackColor,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  height: 55.h,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: SharedColors.blackColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListTile(
                    leading: Text(
                      'pay',
                      style: TextStyle(
                          color: SharedColors.whiteColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp),
                    ),
                    trailing: BlocBuilder<FoodController, FoodState>(
                      builder: (context, state) {
                        return Text(
                          // '24 min.\$${widget.food.price}',
                          '24 min.\$${BlocProvider.of<FoodController>(context).totalPrice}',
                          style: TextStyle(
                              color: SharedColors.whiteColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp),
                        );
                      },
                    ),
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Pay Success',
                              style: TextStyle(color: SharedColors.blackWhiteColor)),
                          duration: Duration(seconds: 3),
                          backgroundColor: SharedColors.purpleApp,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
