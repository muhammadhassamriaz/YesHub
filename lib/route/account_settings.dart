import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/constants.dart';
import 'package:yeshub/utils/styles.dart';
import 'package:yeshub/widgets/yes_hub_textfield2.dart';
import 'package:yeshub/widgets/yeshub_text.dart';
import 'package:yeshub/widgets/yeshub_textfield.dart';

class AccountSettings extends StatelessWidget {
  TextEditingController _emailTextEditingController = TextEditingController(),
      _usernameTextEditingController = TextEditingController(),
      _aboutTextEditingController = TextEditingController(),
      _currentPasswordTextEditingController = TextEditingController(),
      _newPasswordTextEditingController = TextEditingController(),
      _confirmPasswordTextEditingController = TextEditingController();

  ExpandableController _expandableController = ExpandableController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * .02,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: width * .03,
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: width * .06,
                      color: accentColor,
                    ),
                  ),
                  SizedBox(
                    width: width * .02,
                  ),
                  Text(
                    'Account Settings',
                    style: headingTextStyle.copyWith(
                      fontSize: width * .05,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            Container(
              height: height * .01,
              width: width,
              color: greyColor,
            ),
            SizedBox(
              height: height * .02,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * .03,
                ),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      YesHubTextField2(
                        textEditingController: _emailTextEditingController,
                        hintText: "Email Address",
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      ExpandableNotifier(
                        child: ExpandablePanel(
                          header: Padding(
                            padding: EdgeInsets.all(0),
                            child: Text(
                              "Change Password",
                              style: labelTextStyle.copyWith(
                                fontSize: width * .04,
                                color: accentColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          collapsed: SizedBox(),
                          expanded: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: height * .02,
                              ),
                              Text(
                                'Password should be minimum of 12 characters with a combination of uppercase, lowercase, and numerical characters.',
                                style: labelTextStyle.copyWith(
                                  fontSize: width * .035,
                                ),
                              ),
                              SizedBox(
                                height: height * .02,
                              ),
                              YesHubTextField(
                                textEditingController:
                                    _currentPasswordTextEditingController,
                                hintText: "Current Password",
                                isPasswordText: true,
                                obsecure: true,
                                prefixIcon: null,
                              ),
                              SizedBox(
                                height: height * .02,
                              ),
                              YesHubTextField(
                                textEditingController:
                                    _newPasswordTextEditingController,
                                hintText: "New Password",
                                isPasswordText: true,
                                obsecure: true,
                                prefixIcon: null,
                              ),
                              SizedBox(
                                height: height * .02,
                              ),
                              YesHubTextField(
                                textEditingController:
                                    _confirmPasswordTextEditingController,
                                hintText: "Confirm Password",
                                isPasswordText: true,
                                obsecure: true,
                                prefixIcon: null,
                              ),
                            ],
                          ),
                          theme: ExpandableThemeData(
                            expandIcon: Icons.arrow_forward,
                            iconColor: accentColor,
                            collapseIcon: Icons.arrow_downward,
                            iconSize: width * .05,
                          ),
                          controller: _expandableController,
                        ),
                        controller: _expandableController,
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField(
                        textEditingController:
                            _usernameTextEditingController,
                        hintText: "Username",
                        prefixIcon: null,
                      ),
                      SizedBox(
                        height: height * .02,
                      ),
                      YesHubTextField(
                        textEditingController:
                            _aboutTextEditingController,
                        hintText: "About/Bio",
                        prefixIcon: null,
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
