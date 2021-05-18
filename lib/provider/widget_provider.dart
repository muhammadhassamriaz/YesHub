import 'package:flutter/material.dart';

class WidgetProvider with ChangeNotifier {
  Widget icon;
  changeIcon(Widget _icon) {
    icon = _icon;
    notifyListeners();
  }

  int selectedBottomIndex = 0;
  changeSelectedBottomIndex(int _index) {
    selectedBottomIndex = _index;
    notifyListeners();
  }

  WidgetProvider() {
    icon = Icon(
      Icons.visibility_off_outlined,
    );
  }
}
