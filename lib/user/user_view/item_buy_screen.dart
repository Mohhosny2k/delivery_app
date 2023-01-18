import '../../food/food_controller.dart';
import '../../shared/shared_theme/shared_color.dart';
import '../../shared/shared_theme/shared_font.dart';
import '../../shared/shared_widget/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../food/food_state.dart';

class ItemBuyScreen extends StatefulWidget {
  //ItemBuyScreen(this.food, {super.key});
  // FoodModel food;
  @override
  State<ItemBuyScreen> createState() => _ItemBuyScreenState();
}

class _ItemBuyScreenState extends State<ItemBuyScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodController, FoodState>(
      builder: (context, state) {
        if (state is GetItemLoadingState) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GetItemErrorState) {
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
                    'ItemPoke',
                    style: SharedFonts.primaryBlackWhiteFont,
                  ),
                ),
                body: Column(children: [
                  SafeArea(
                    top: true,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(10),
                      title: Text(
                          ' ${BlocProvider.of<FoodController>(context).wishlistItem.length} Items',
                          style: SharedFonts.subBlackFont),
                      trailing: Icon(
                        Icons.delete,
                        color: Colors.red,
                      ),
                      onTap: () {
                        BlocProvider.of<FoodController>(context)
                            .deleteWishlist();
                      },
                    ),
                  ),
                  Flexible(
                    child: ListView.builder(
                      itemCount: BlocProvider.of<FoodController>(context)
                          .wishlistItem
                          .length,
                      itemBuilder: (context, index) => Test(
                          BlocProvider.of<FoodController>(context)
                              .wishlistItem[index]),
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
