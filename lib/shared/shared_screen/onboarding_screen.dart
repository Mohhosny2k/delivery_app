import 'home-screen.dart';
import '../shared_theme/shared_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  final String? image;
  final String? title;
  BoardingModel({
    required this.image,
    required this.title,
  });
}

class onBoardingScreen extends StatefulWidget {
  onBoardingScreen({super.key});
  var boradControl = PageController();
  bool isLast = false;

  List<BoardingModel> boardingList = [
    BoardingModel(
        image: 'assets/images/oneonboarding.png', title: 'Food delivery'),
    BoardingModel(
        image: 'assets/images/d.png', title: 'Get your order'),
    BoardingModel(
        image: 'assets/images/threeonboarding.png', title: 'Ban appetite!'),
  ];

  @override
  State<onBoardingScreen> createState() => _onBoardingScreenState();
}

class _onBoardingScreenState extends State<onBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.blackWhiteColor,
      body: PageView.builder(
        onPageChanged: (int index) {
          if (index == widget.boardingList.length - 1) {
            setState(() {
              widget.isLast = true;
            });
            print('last');
          } else {
            print('no last');
            setState(() {
              widget.isLast = false;
            });
          }
        },
        controller: widget.boradControl,
        itemCount: widget.boardingList.length,
        itemBuilder: (context, index) {
          return BuildBoradingScreen(widget.boardingList[index]);
        },
      ),
    );
  }
TextButton textSkip(
  dynamic tap,
) {
  return TextButton(
      onPressed: tap,
      child: Text(
        'skip',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ));
}
  Widget BuildBoradingScreen(BoardingModel model) {
    return Column(
      children: [
        SizedBox(height: 20.h,),
          Center(
            child: Container(
              height: 490.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('${model.image}'))),
            ),
          ),

          Text('${model.title}',
              style: TextStyle(
                  color: SharedColors.whiteColor,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold)),
SizedBox(
  height: 25.h,
),
                  Padding(
                    
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                    
                       textSkip(() {
                                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => HomeScreen()));
                                }),
                        SmoothPageIndicator(
                          controller: widget.boradControl,
                          count: widget.boardingList.length,
                          effect: ExpandingDotsEffect(
                              activeDotColor: SharedColors.whiteColor,
                              dotColor: Colors.white70,
                              dotHeight: 10.h,
                              expansionFactor: 4,
                              dotWidth: 10.w,
                              spacing: 5),
                        ),
                        // Spacer(),
                        TextButton(
                          // style: TextButton.styleFrom(
                          //   backgroundColor: SharedColors.whiteColor,
                          //   shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(10.0),
                          //   ),
                           // fixedSize: Size(90, 45),
                         // ),
                          onPressed: () {
                            if (widget.isLast) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => HomeScreen()));
                          
                            } else {
                              widget.boradControl.nextPage(
                                  duration: Duration(milliseconds: 750),
                                  curve: Curves.fastLinearToSlowEaseIn);
                            }
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(color: Colors.yellow),
                          ),
                        ),
                      ],
                    ),
                  ),
      ],
    );
  }
}
