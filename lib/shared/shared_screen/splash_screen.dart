import 'onboarding_screen.dart';
import '../shared_theme/shared_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool first = true;
  @override
  void didChangeDependencies() async {
    if (first) {
      first = false;
      await Future.delayed(Duration(seconds: 3), () async {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => onBoardingScreen()));
      });
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SharedColors.whiteColor,
      body: Column(
        children: [
          SizedBox(
            height: 20.h,
          ),
          Center(
            child: Container(
              height: 505.h,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/start.png'))),
            ),
          ),
          Text('Delivery App',
              style: TextStyle(
                  color: SharedColors.blackWhiteColor,
                  fontSize: 37.sp,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }
}
