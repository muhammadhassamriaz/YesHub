import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:yeshub/provider/widget_provider.dart';
import 'package:yeshub/services/navigation_service.dart';
import 'package:yeshub/utils/colors.dart';
import 'package:yeshub/utils/styles.dart';

import 'app_router.dart';
import 'locator.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(MyApp());
  setupLocator();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<WidgetProvider>(
          create: (_) => WidgetProvider(),
          lazy: false,
        ),
      ],
      child: MaterialApp(
        title: 'YesHub',
        theme: ThemeData(
          primaryColor: primaryColor,
          primarySwatch: primarySwatchColor,
          textTheme: TextTheme(
            headline1: headingTextStyle,
            subtitle1: subheadingTextStyle,
            bodyText1: titleTextStyle,
          ),
          accentColor: accentColor,
          focusColor: accentColor,
          inputDecorationTheme: InputDecorationTheme(
            focusColor: accentColor,
            alignLabelWithHint: true,
            hoverColor: accentColor,
            fillColor: accentColor,
          ),
        ),
        onGenerateRoute: AppRoute.generateRoute,
        initialRoute: AppRoute.splashScreen,
        navigatorKey: locator<NavigationService>().navigatorKey,
      ),
    );
  }
}
