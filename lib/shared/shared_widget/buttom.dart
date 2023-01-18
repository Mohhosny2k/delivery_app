import '../../food/food_view/cart_details.dart';
import '../../food/food_controller.dart';
import '../../food/food_model.dart';
import '../shared_theme/shared_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../food/food_state.dart';

// import 'new_screen.dart';

// class Welcome extends StatefulWidget {
//   const Welcome({super.key});

//   @override
//   State<Welcome> createState() => _WelcomeState();
// }

// class _WelcomeState extends State<Welcome> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       body:   Center(
//         child: ListTile(
//                         leading: Text('fooddetails'),
//                         onTap: () {
//                         //  Navigator.push(context, MaterialPageRoute(builder: (_)=>NewScreen()));
//                         },
//                       ),
//       ),
//     );
//   }
// }

class Buttom extends StatefulWidget {
  Buttom(this.food, {super.key});
  FoodModel food;
  @override
  State<Buttom> createState() => _ButtomState();
}

class _ButtomState extends State<Buttom> {
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
        SizedBox(
          height: 450.h,
        ),
        Container(
          //alignment: Alignment.bottomCenter,
          // decoration: BoxDecoration(color: SharedColors.pinkColor),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: TextButton(
              onPressed: () {
                print(' yesssssssssssssssssssssssss');
                // cartDetails(context);
                  BlocProvider.of<FoodController>(context)
                                            .CalculatePrice(widget.food);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => CartDetailsWidget(widget.food)));
              },
              child: Container(
                height: 60.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListTile(
                  leading: Text(
                    'Cart',
                    style: TextStyle(
                        color: SharedColors.whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.sp),
                  ),
                  trailing: BlocBuilder<FoodController, FoodState>(
                    builder: (context, state) {
                      return Text(
                        //'24 min.\$ ${widget.food.price}',
                        '24 min.\$ ${BlocProvider.of<FoodController>(context).totalPrice}',
                        style: TextStyle(
                            color: SharedColors.whiteColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15.sp),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
