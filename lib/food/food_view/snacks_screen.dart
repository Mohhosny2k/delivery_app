import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../shared/shared_theme/shared_color.dart';
import '../../shared/shared_theme/shared_font.dart';
import '../../shared/shared_widget/test.dart';
import '../food_controller.dart';
import '../food_state.dart';
class SnacksScreen extends StatefulWidget {
  const SnacksScreen({super.key});

  @override
  State<SnacksScreen> createState() => _SnacksScreenState();
}

class _SnacksScreenState extends State<SnacksScreen> {
  @override
  Widget build(BuildContext context) {
 return BlocBuilder<FoodController, FoodState>(
      builder: (context, state) {
        if (state is GetSnacksLoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GetSnacksErrorState) {
          return Center(
            child: Text('Some thing went wrong',
                style: SharedFonts.primaryBlackFont),
          );
        } else {
          return BlocBuilder<FoodController, FoodState>(
            builder: (context, state) {
              return Scaffold(
                backgroundColor: SharedColors.backGroundColor,
                appBar: AppBar(
                  elevation: 0,
                  leading: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_new_outlined,
                        color: SharedColors.blackColor,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      iconSize: 24.sp),
                  backgroundColor: Colors.transparent,
                  centerTitle: true,
                  title: Text(
                    'Snacks Screen',
                    style: SharedFonts.primaryBlackWhiteFont,
                  ),
                ),
                body: Column(children: [
                  SafeArea(
                    top: true,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      title: Text(
                          ' ${BlocProvider.of<FoodController>(context).alllsnacks.length} Items',
                          style: SharedFonts.subBlackFont),
                    
                    ),
                  ),
                  Flexible(
                    child: ListView.builder(
                      itemCount: BlocProvider.of<FoodController>(context)
                          .alllsnacks
                          .length,
                      itemBuilder: (context, index) => Test(
                          BlocProvider.of<FoodController>(context)
                              .alllsnacks[index]),
                    ),
                  )
                ]),
              );
            },
          );
        }
      },
    );
  }
}