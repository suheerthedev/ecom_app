import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class MainViewModel extends BaseViewModel {
  final PageController pageController = PageController();
  int selectedIndex = 0;

  // Method to change bottom navigation index
  void changeNavbarIndex(int index) {
    selectedIndex = index;
    rebuildUi();
  }

  void animateToPage(int index) {
    pageController.jumpToPage(index); // Instantly switches page
    changeNavbarIndex(index);
  }
}
