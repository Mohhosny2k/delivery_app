// ignore: file_names
import 'package:delivery/food/food_controller.dart';
import 'package:delivery/food/food_view/beverages_screen.dart';
import 'package:delivery/food/food_view/pizza_screen.dart';
import 'package:delivery/food/food_view/salad_screen.dart';
import 'package:delivery/food/food_view/snacks_screen.dart';
import 'package:delivery/shared/shared_widget/hori_scrol_widget.dart';
import 'package:delivery/shared/shared_widget/hori_tab_widget.dart';

import 'package:delivery/user/user_view/my_header_darwer.dart';
import 'package:delivery/food/food_view/new_screen.dart';
import 'package:delivery/shared/shared_widget/screen.dart';
import 'package:delivery/shared/shared_theme/shared_color.dart';
import 'package:delivery/shared/shared_theme/shared_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../shared_widget/test.dart';
import '../../food/food_model.dart';
import '../../food/food_state.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});
//this.food,
  //FoodModel food;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int value = 0;
  String adType = '';
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FoodController, FoodState>(builder: (context, state) {
      if (state is GetFoodLoadingState) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else if (state is GetFoodErrorState) {
        return Center(
          child: Text('Some thing went wrong',
              style: SharedFonts.primaryBlackFont),
        );
      } else {
        return DefaultTabController(
          length: 5,
          child: Scaffold(
            backgroundColor: SharedColors.whiteColor,
            drawer: Drawer(
              //  backgroundColor: SharedColors.pinkColor,
              child: ListView(
                children: [
                  MyHeaderDrawer(),
                ],
              ),
            ),
            appBar: appBarrrr(),
            body: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '   Hits of the week',
                      textAlign: TextAlign.left,
                      style: SharedFonts.primaryBlackFont,
                    ),
                    Container(
                      height: 250.h,
                      width: 380.w,
                      child: PageView(
                        children: [
                          Screen(),
                          ScreenTwo(),
                          ScreenThree(),
                          ScreenFour(),
                        ],
                        onPageChanged: (int index) {
                          print(index);
                          setState(() {
                            value = index;
                          });
                        },
                        //  itemBuilder: (context, index) => Screen(),

                        // itemCount: 4,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Itemone(value),
                          ItemTwo(value),
                          ItemThree(value),
                          ItemFour(value),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 60.h,
                      child: TabBar(
                        indicatorColor: Colors.grey.shade100,
                        isScrollable: true,
                        labelStyle: TextStyle(letterSpacing: .5),
                        tabs: [
                          AllFood(),
                          SaladsFood(),
                          PizzaFood(),
                          BeveragesDrink(),
                          SnacksFood(),
                        ],
                      ),
                    ),
                    Flexible(
                      child: TabBarView(children: [
                        BlocBuilder<FoodController, FoodState>(
                            builder: (context, state) {
                          if (state is GetFoodLoadingState) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (state is GetFoodErrorState) {
                            return Center(
                              child: Text('Some thing went wrong',
                                  style: SharedFonts.primaryBlackFont),
                            );
                          } else {
                            return ListView.builder(
                              itemCount:
                                  BlocProvider.of<FoodController>(context)
                                      .alllfood
                                      .length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return Test(
                                    BlocProvider.of<FoodController>(context)
                                        .alllfood[index]);
                              },
                            );
                          }
                        }),
                        BlocBuilder<FoodController, FoodState>(
                            builder: (context, state) {
                          if (state is GetSaladsLoadingState) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (state is GetSaladsErrorState) {
                            return Center(
                              child: Text('Some thing went wrong',
                                  style: SharedFonts.primaryBlackFont),
                            );
                          } else {
                            return ListView.builder(
                              itemCount:
                                  BlocProvider.of<FoodController>(context)
                                      .alllsalads
                                      .length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return Test(
                                    BlocProvider.of<FoodController>(context)
                                        .alllsalads[index]);
                              },
                            );
                          }
                        }),
                        BlocBuilder<FoodController, FoodState>(
                            builder: (context, state) {
                          if (state is GetPizzaLoadingState) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (state is GetPizzaErrorState) {
                            return Center(
                              child: Text('Some thing went wrong',
                                  style: SharedFonts.primaryBlackFont),
                            );
                          } else {
                            return ListView.builder(
                              itemCount:
                                  BlocProvider.of<FoodController>(context)
                                      .alllpizza
                                      .length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return Test(
                                    BlocProvider.of<FoodController>(context)
                                        .alllpizza[index]);
                              },
                            );
                          }
                        }),
                        BlocBuilder<FoodController, FoodState>(
                            builder: (context, state) {
                          if (state is GetBeveragesLoadingState) {
                            return Center(
                              child: CircularProgressIndicator(),
                            );
                          } else if (state is GetBeveragesErrorState) {
                            return Center(
                              child: Text('Some thing went wrong',
                                  style: SharedFonts.primaryBlackFont),
                            );
                          } else {
                            return ListView.builder(
                              itemCount:
                                  BlocProvider.of<FoodController>(context)
                                      .alllbeverages
                                      .length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return Test(
                                    BlocProvider.of<FoodController>(context)
                                        .alllbeverages[index]);
                              },
                            );
                          }
                        }),
                        BlocBuilder<FoodController, FoodState>(
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
                            return ListView.builder(
                              itemCount:
                                  BlocProvider.of<FoodController>(context)
                                      .alllsnacks
                                      .length,
                              scrollDirection: Axis.vertical,
                              itemBuilder: (context, index) {
                                return Test(
                                    BlocProvider.of<FoodController>(context)
                                        .alllsnacks[index]);
                              },
                            );
                          }
                        }),
                      ]),
                    ),
                  ]),
            ),
          ),
        );
      }
    });
  }

  appBarrrr() {
    return AppBar(
      iconTheme: IconThemeData(color: SharedColors.blackColor),
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Container(
        padding: EdgeInsets.all(10),
        height: 32.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: SharedColors.blackColor,
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            SizedBox(
              width: 30.w,
            ),
            Text(
              '100a Ealing Rd.24 mins  ',
              style: TextStyle(letterSpacing: .1, fontSize: 15),
            ),
          ],
        ),
      ),
      centerTitle: true,
      toolbarHeight: 80.h,
      actions: [
        // InkWell(
        //     onTap: () {
        //     //  print('okkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk');
        //      PopupMenuButton(
        //        // icon: Icon(Icons.arrow_downward, color: SharedColors.pinkColor),
        //        // iconSize: 20.0,
        //        child: SizedBox(
        //         width: 39.w,
        //         child: Image.asset(
        //           'assets/images/iconSearch.png',
        //         )),
        //         shape: RoundedRectangleBorder(
        //             borderRadius: BorderRadius.circular(15.0)),
        //         itemBuilder: (BuildContext context) {
        //           return <PopupMenuEntry<String>>[
        //             PopupMenuItem(
        //               child: Text('Salads'),
        //               value: 'Salads',
        //             ),
        //             PopupMenuItem(
        //               child: Text('Pizza'),
        //               value: 'Pizza',
        //             ),
        //             PopupMenuItem(
        //               child: Text('Beverages'),
        //               value: 'Beverages',
        //             ),
        //             PopupMenuItem(
        //               child: Text('Snacks'),
        //               value: 'Snacks',
        //             ),
        //           ];
        //         },
        //         onSelected: (v) {
        //           setState(() { adType = v;});
        //         },
        //       );
        //     },
        //     child: SizedBox(
        //         width: 39.w,
        //         child: Image.asset(
        //           'assets/images/iconSearch.png',
        //         ))),

        PopupMenuButton(
          // icon: Icon(Icons.arrow_downward, color: SharedColors.pinkColor),
          // iconSize: 20.0,
          child: SizedBox(
              width: 39.w,
              child: Image.asset(
                'assets/images/iconSearch.png',
              )),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          itemBuilder: (BuildContext context) {
            return <PopupMenuEntry<String>>[
              PopupMenuItem(
                child: Text('Salads'),
                value: 'Salads',
                // onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (_) => SaladScreen()));
                // },
              ),
              PopupMenuItem(
                child: Text('Pizza'),
                value: 'Pizza',
                // onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (_) => PizzaScreen()));
                // },
              ),
              PopupMenuItem(
                child: Text('Beverages'),
                value: 'Beverages',
                // onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (_) => BeveragesScreen()));
                // },
              ),
              PopupMenuItem(
                child: Text('Snacks'),
                value: 'Snacks',
                // onTap: () {
                //   Navigator.push(context,
                //       MaterialPageRoute(builder: (_) => SnacksScreen()));
                // },
              ),
            ];
          },
          onSelected: (v) {
            setState(() {
              adType = v;
            });
            if (v == 'Salads') {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SaladScreen()));
            } else if (v == 'Pizza') {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => PizzaScreen()));
            } else if (v == 'Beverages') {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => BeveragesScreen()));
            } else {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => SnacksScreen()));
            }
          },
        ),
      ],
    );
  }
}
