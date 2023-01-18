import '../food_controller.dart';
import '../food_state.dart';
import '../../shared/shared_theme/shared_color.dart';
import '../../shared/shared_theme/shared_font.dart';
import '../../shared/shared_widget/buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../food_model.dart';

class NewScreen extends StatefulWidget {
  NewScreen(this.food, {super.key});
  FoodModel food;
  @override
  State<NewScreen> createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  // int numberItem = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.2),
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      // ),
      body: ListView(
        children: [
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
            decoration: BoxDecoration(
              color: SharedColors.whiteColor,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(

                  //padding: EdgeInsets.all(12),

                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SizedBox(
                          height: 180.h,
                          width: 200.w,
                          child: Image.network('${widget.food.image}',
                              //'https://c1.klipartz.com/pngpicture/978/1003/sticker-png-friendship-love-family-x-nada-hug-watercolor-paint-wet-ink-thumb-conversation-spanish-language-sentence-thumbnail.png',//'${widget.food.image}',
                              fit: BoxFit.fill)),
                    ),
                    ListTile(
                      leading: Text(
                        '\n${widget.food.nameFood}',
                        textAlign: TextAlign.left,
                        style: SharedFonts.subBlackFont,
                      ),
                      trailing: Text(
                        ' \$ ${widget.food.price}',
                        style: TextStyle(
                            fontSize: 15.sp, color: SharedColors.blackColor),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      '${widget.food.description}',

                      //   ''' Chicken Poke Bowls are an easy and fresh dinner that won\’t break the bank or your diet! Made with fresh ingredients like shredded chicken, edamame, corn, cauliflower and micro greens, this delicious poke bowl is NOT one you want to miss out on.''',

                      style: TextStyle(
                          color: SharedColors.greyColor,
                          height: 1.5,
                          fontSize: 16.sp),

                      softWrap: true,

                      maxLines: 3,

                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 17.h,
                    ),
                    Container(
                        height: 85.h,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: SharedColors.greyApp, width: 2),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '${widget.food.kcal}',
                                  style: SharedFonts.subBlackFont,
                                ),
                                Text(
                                  'kcal',
                                  style: SharedFonts.subGreyFont,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '${widget.food.grams}',
                                  style: SharedFonts.subBlackFont,
                                ),
                                Text(
                                  'grams',
                                  style: SharedFonts.subGreyFont,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '${widget.food.proteins}',
                                  style: SharedFonts.subBlackFont,
                                ),
                                Text(
                                  'proteins',
                                  style: SharedFonts.subGreyFont,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '${widget.food.fats}',
                                  style: SharedFonts.subBlackFont,
                                ),
                                Text(
                                  'fats',
                                  style: SharedFonts.subGreyFont,
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  '${widget.food.carbs}',
                                  style: SharedFonts.subBlackFont,
                                ),
                                Text(
                                  'carbs',
                                  style: SharedFonts.subGreyFont,
                                ),
                              ],
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 15.h,
                    ),
                    ListTile(
                      leading: Text(
                        'Add in poke',
                        style: SharedFonts.subBlackFont,
                      ),
                      trailing: IconButton(
                        onPressed: () {
                       
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: SharedColors.blackColor,
                        ),
                        
                      ),
                      onTap: () {
                           BlocProvider.of<FoodController>(context)
                              .addToWishlist(widget.food);
                      },
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(6),
                          margin: EdgeInsets.all(6),
                          height: 80.h,
                          width: 142.w,
                          decoration: BoxDecoration(
                              color: SharedColors.greyApp,
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {
                                  // setState(() {
                                  //   numberItem -= 1;
                                  // });
                                  BlocProvider.of<FoodController>(context)
                                      .ItemDecrement();
                                  BlocProvider.of<FoodController>(context)
                                      .totalPrice;
                                  BlocProvider.of<FoodController>(context)
                                      .CalculatePrice(widget.food);
                                },
                                icon: Icon(
                                  Icons.remove,
                                  size: 24.sp,
                                ),
                              ),
                              BlocBuilder<FoodController, FoodState>(
                                builder: (context, state) {
                                  return Text(
                                    '${BlocProvider.of<FoodController>(context).numberEat}',
                                    //'',
                                    style: SharedFonts.subBlackFont,
                                  );
                                },
                              ),
                              IconButton(
                                onPressed: () {
                                  // setState(() {
                                  //   numberItem += 1;
                                  // });
                                  BlocProvider.of<FoodController>(context)
                                      .ItemIncrement();
                                  BlocProvider.of<FoodController>(context)
                                      .totalPrice;
                                  BlocProvider.of<FoodController>(context)
                                      .CalculatePrice(widget.food);
                                },
                                icon: Icon(
                                  Icons.add,
                                  size: 24.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.all(6),
                          padding: EdgeInsets.all(5),
                          height: 80.h,
                          width: 166.w,
                          decoration: BoxDecoration(
                              color: SharedColors.blackColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: ListTile(
                            leading: Text(
                              'Add to cart   ',
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: SharedColors.whiteColor),
                            ),
                            trailing: BlocBuilder<FoodController, FoodState>(
                              builder: (context, state) {
                                return Text(
                                  '${BlocProvider.of<FoodController>(context).totalPrice}', //' $ ${widget.food.price}',
                                  style: TextStyle(
                                      fontSize: 15.sp,
                                      color: SharedColors.whiteColor),
                                );
                              },
                            ),
                            onTap: () {
                              //  buttomCart(context);
                              BlocProvider.of<FoodController>(context)
                                  .CalculatePrice(widget.food);
                              //   ButtomCart(widget.food);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Buttom(widget.food)));
                            },
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
