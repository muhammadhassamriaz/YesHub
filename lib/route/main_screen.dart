import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yeshub/components/bottom_app_bar.dart';
import 'package:yeshub/provider/widget_provider.dart';
import 'package:yeshub/route/community.dart';
import 'package:yeshub/route/home.dart';
import 'package:yeshub/route/notifications.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _widgetProvider = Provider.of<WidgetProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: _widgetProvider.selectedBottomIndex == 4
            ? NotificationScreen()
            : _widgetProvider.selectedBottomIndex == 1
                ? CommunityScreen()
                : HomeScreen(),
      ),
      bottomNavigationBar: YesHubBottomBar(),
    );
  }
}
