import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:yeshub/route/account_settings.dart';
import 'package:yeshub/route/profile_picture.dart';
import 'package:yeshub/route/validations.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/constants.dart';
import 'package:yeshub/utils/styles.dart';
import 'package:yeshub/widgets/yeshub_textbutton.dart';

import 'advance.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    Constants().init(context);
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
                    'Settings',
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
            Wrap(
              runSpacing: width * .06,
              children: List.generate(
                8,
                (index) {
                  List<String> titles = [
                    "Profile Picture",
                    "Account Settings",
                    "Validation",
                    "Advance",
                    "Content Policy",
                    "Privacy Policy",
                    "User Agreement",
                    "Deactivate Account",
                  ];
                  return GestureDetector(
                    onTap: () {
                      if (titles[index].toLowerCase().contains("picture")) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ProfilePictureScreen(),
                          ),
                        );
                      } else if (titles[index]
                          .toLowerCase()
                          .contains("account")) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => AccountSettings(),
                          ),
                        );
                      } else if (titles[index]
                          .toLowerCase()
                          .contains("validation")) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ValidationScreen(),
                          ),
                        );
                      } else if (titles[index]
                          .toLowerCase()
                          .contains("advance")) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => AdvanceScreen(),
                          ),
                        );
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: width * .03,
                      ),
                      child: Row(
                        children: [
                          Text(
                            titles[index],
                            style: labelTextStyle.copyWith(
                              fontSize: width * .045,
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward,
                            size: width * .045,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
