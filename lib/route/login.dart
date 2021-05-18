import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:yeshub/route/create_account.dart';
import 'package:yeshub/route/main_screen.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/constants.dart';
import 'package:yeshub/utils/styles.dart';
import 'package:yeshub/widgets/yeshub_textbutton.dart';
import 'package:yeshub/widgets/yeshub_textfield.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController _usernameTextEditingController =
          TextEditingController(),
      _passwordTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: Constants.kDefaultSize * 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      loginBackground,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: Constants.kDefaultSize * 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    Constants.kDefaultSize * 6,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Constants.kDefaultSize * 5,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Constants.kDefaultSize * 2,
                      ),
                      Center(
                        child: SizedBox(
                          width: Constants.kDefaultSize * 50,
                          child: Image.asset(
                            appLogo,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Constants.kDefaultSize * 2,
                      ),
                      Text(
                        "Login",
                        style: headingTextStyle.copyWith(
                          color: accentColor,
                          fontSize: Constants.headingTextSize,
                        ),
                      ),
                      SizedBox(
                        height: Constants.kDefaultSize * 2,
                      ),
                      YesHubTextField(
                        textEditingController: _usernameTextEditingController,
                        hintText: "Username",
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(
                            Constants.kDefaultSize * 3.5,
                          ),
                          child: Container(
                            width: Constants.kDefaultSize * 2,
                            height: Constants.kDefaultSize * 2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  personIcon,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Constants.kDefaultSize * 2,
                      ),
                      YesHubTextField(
                        textEditingController: _passwordTextEditingController,
                        hintText: "Password",
                        isPasswordText: true,
                        obsecure: true,
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(
                            Constants.kDefaultSize * 3.5,
                          ),
                          child: Container(
                            width: Constants.kDefaultSize * 2,
                            height: Constants.kDefaultSize * 2,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  lockIcon,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Constants.kDefaultSize * 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                useSafeArea: false,
                                builder: (context) {
                                  TextEditingController
                                      usernameTextEditingController =
                                      TextEditingController();
                                  TextEditingController
                                      _emailTextEditingController =
                                      TextEditingController();

                                  return Dialog(
                                    insetPadding: EdgeInsets.symmetric(
                                      horizontal: width * .05,
                                    ),
                                    child: Container(
                                      width: width,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(
                                            height: height * .03,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: width * .03,
                                            ),
                                            child: Text(
                                              'Forgot your password?',
                                              style: labelTextStyle.copyWith(
                                                fontSize:
                                                    Constants.labelTextSize,
                                                color: accentColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * .03,
                                          ),
                                          YesHubTextField(
                                            textEditingController:
                                                usernameTextEditingController,
                                            hintText: "Username",
                                            prefixIcon: Padding(
                                              padding: EdgeInsets.all(
                                                Constants.kDefaultSize * 3.5,
                                              ),
                                              child: Container(
                                                width:
                                                    Constants.kDefaultSize * 2,
                                                height:
                                                    Constants.kDefaultSize * 2,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      personIcon,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * .03,
                                          ),
                                          YesHubTextField(
                                            textEditingController:
                                                _emailTextEditingController,
                                            hintText: "Email",
                                            prefixIcon: Padding(
                                              padding: EdgeInsets.all(
                                                Constants.kDefaultSize * 3.5,
                                              ),
                                              child: Container(
                                                width:
                                                    Constants.kDefaultSize * 2,
                                                height:
                                                    Constants.kDefaultSize * 2,
                                                decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      emailIcon,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * .03,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: width * .03,
                                            ),
                                            child: Text(
                                              'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet.',
                                              style: labelTextStyle.copyWith(
                                                fontSize: width * .032,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * .03,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                              horizontal: width * .03,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  width: width * .4,
                                                  child: YesHubTextButton(
                                                    title: "Cancel",
                                                    textColor: Colors.white,
                                                    buttonColor: redAccentColor,
                                                    callback: () {},
                                                  ),
                                                ),
                                                Container(
                                                  width: width * .4,
                                                  child: YesHubTextButton(
                                                    title: "Email Me",
                                                    textColor: Colors.white,
                                                    buttonColor:
                                                        greenAccentColor,
                                                    callback: () {},
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: height * .03,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Text(
                              'Forgot Password?',
                              style: labelTextStyle.copyWith(
                                fontSize: Constants.labelTextSize,
                                color: accentColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Constants.kDefaultSize * 3,
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => CreateAccountScreen(),
                                ),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Don’t have an account?',
                                  style: labelTextStyle.copyWith(
                                    fontSize: Constants.kDefaultSize * 3,
                                    color: accentColor,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      'Sign up?',
                                      style: labelTextStyle.copyWith(
                                        fontSize: Constants.labelTextSize * 1.1,
                                        color: accentColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_right,
                                      size: Constants.kDefaultSize * 10,
                                      color: accentColor,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => MainScreen(),
                                  ),
                                  (route) => false);
                            },
                            child: Container(
                              width: Constants.kDefaultSize * 32,
                              height: Constants.kDefaultSize * 32,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: primaryColor,
                              ),
                              child: Center(
                                child: Text(
                                  'Log In',
                                  style: headingTextStyle.copyWith(
                                    fontSize: Constants.headingTextSize,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: Constants.kDefaultSize * 5,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
