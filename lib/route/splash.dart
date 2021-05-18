import 'package:flutter/material.dart';
import 'package:yeshub/route/login.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/constants.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(
        seconds: 2,
      ),
      () {
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (_) => LoginScreen(),
            ),
            (route) => false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Constants().init(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: Constants.kDefaultSize * 60,
                child: Image.asset(
                  appLogo,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
