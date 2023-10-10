
import 'package:drone/screens/collect/collect.dart';
import 'package:drone/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class NavigationController extends ChangeNotifier {
  List<Widget> screens = [
    const HomeScreen(),
    const CollectScreen(),
  ];
  int currentIndex = 0;
  late Widget currentScreen;

  NavigationController() {
    currentScreen = screens[currentIndex];
  }

  void navigate(Widget screen) {
    currentScreen = screen;
    if (screens.contains(screen)) {
      currentIndex = screens.indexOf(screen);
    } else {
      currentIndex = 0;
    }
    notifyListeners();
  }
}