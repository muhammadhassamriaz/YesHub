import 'package:flutter/material.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/constants.dart';
import 'package:yeshub/utils/styles.dart';
import 'package:yeshub/widgets/yeshub_textbutton.dart';
import 'package:yeshub/widgets/yeshub_textfield.dart';

class CreateAccountScreen extends StatefulWidget {
  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  TextEditingController _usernameTextEditingController =
          TextEditingController(),
      _passwordTextEditingController = TextEditingController(),
      _emailTextEditingController = TextEditingController();

  bool checked = false;

  @override
  Widget build(BuildContext context) {
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: Constants.kDefaultSize * 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: Constants.kDefaultSize * 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            width: Constants.kDefaultSize * 12,
                            height: Constants.kDefaultSize * 12,
                            decoration: BoxDecoration(
                              color: Colors.grey[300].withAlpha(180),
                              borderRadius: BorderRadius.circular(
                                Constants.kDefaultSize * 2,
                              ),
                            ),
                            child: Center(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: Constants.kDefaultSize * 4,
                                  ),
                                  Icon(
                                    Icons.arrow_back_ios,
                                    size: Constants.kDefaultSize * 7,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
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
                        "Sign Up",
                        style: headingTextStyle.copyWith(
                          color: accentColor,
                          fontSize: Constants.headingTextSize,
                        ),
                      ),
                      SizedBox(
                        height: Constants.kDefaultSize * 2,
                      ),
                      YesHubTextField(
                        textEditingController: _emailTextEditingController,
                        hintText: "Email",
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
                                  emailIcon,
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
                        height: Constants.kDefaultSize * 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            checked = !checked;
                          });
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              checked
                                  ? Icons.check_box
                                  : Icons.check_box_outline_blank,
                              size: Constants.kDefaultSize * 5,
                            ),
                            SizedBox(
                              width: Constants.kDefaultSize * 2,
                            ),
                            Expanded(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "By joining, you agree to our ",
                                      style: labelTextStyle.copyWith(
                                        fontSize: Constants.labelTextSize * 0.8,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "User Agreement ",
                                      style: labelTextStyle.copyWith(
                                        fontSize: Constants.labelTextSize * 0.8,
                                        color: highlightColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "and ",
                                      style: labelTextStyle.copyWith(
                                        fontSize: Constants.labelTextSize * 0.8,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "Privacy Policy",
                                      style: labelTextStyle.copyWith(
                                        fontSize: Constants.labelTextSize * 0.8,
                                        color: highlightColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      YesHubTextButton(
                        title: "Create Account",
                        callback: () {},
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
