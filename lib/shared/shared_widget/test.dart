import '../../food/food_view/new_screen.dart';
import '../shared_theme/shared_color.dart';
import '../shared_theme/shared_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../food/food_model.dart';

class Test extends StatefulWidget {
  Test(this.food, {super.key});
  FoodModel food;
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // foodDetails(context);
        //Navigator.push(context, MaterialPageRoute(builder: (_)=>FoodDetails(widget.food)));
        Navigator.push(context, MaterialPageRoute(builder: (_)=>NewScreen(widget.food)));
       
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          children: [
            Container(
              width: 103.w,
              height: 103.h,
              margin: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                      image: NetworkImage(
                        '${widget.food.image}',
                      ),
                      //'https://www.simplyrecipes.com/thmb/KRw_r32s4gQeOX-d07NWY1OlOFk=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Simply-Recipes-Homemade-Pizza-Dough-Lead-Shot-1c-c2b1885d27d4481c9cfe6f6286a64342.jpg'), //AssetImage('assets/images/saled.png'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: 10.h,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '\n${widget.food.nameFood}',
                  //  '\nPoke with chicken',
                  softWrap: true,
                  style: SharedFonts.subBlackFont,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        padding: EdgeInsets.all(6),
                        margin: EdgeInsets.only(
                            top: 15, right: 5, left: 3, bottom: 15),
                        height: 32.h,
                        width: 55.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: SharedColors.backGroundColor),
                        child: Text('\$${widget.food.price}')),
                    Text(
                      '${widget.food.kcal} kcal',
                      style: SharedFonts.subGreyFont,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
