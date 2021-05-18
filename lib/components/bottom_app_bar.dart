import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeshub/provider/widget_provider.dart';
import 'package:yeshub/route/main_screen.dart';
import 'package:yeshub/utils/assets.dart';
import 'package:yeshub/utils/colors.dart';

class YesHubBottomBar extends StatelessWidget {
  List<String> titles = [
    homeIcon,
    categoryIcon,
    calendarIcon,
    messageIcon,
    notificationIcon,
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var _widgetProvider = Provider.of<WidgetProvider>(context);
    return Container(
      height: height * .06,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey[300].withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          titles.length,
          (index) {
            return IconButton(
              onPressed: () {
                _widgetProvider.changeSelectedBottomIndex(index);
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (_) => MainScreen(),
                    ),
                    (route) => false);
              },
              icon: SizedBox(
                width: width * .05,
                height: width * .05,
                child: Image.asset(
                  titles[index],
                  color: _widgetProvider.selectedBottomIndex == index
                      ? accentColor
                      : lightAccentColor,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
