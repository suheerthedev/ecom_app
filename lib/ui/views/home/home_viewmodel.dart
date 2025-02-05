import 'package:ecom_app/app/app.bottomsheets.dart';
import 'package:ecom_app/app/app.locator.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final NavigationService navigationService = locator<NavigationService>();
  final BottomSheetService bottomSheetService = locator<BottomSheetService>();

  int selectedIndex = 0;

  List products = [
    {"name": "Regular Fit Slogan", "price": "1,190"},
    {"name": "Regular Fit Slogan", "price": "1,190"},
    {"name": "Regular Fit Slogan", "price": "1,190"},
    {"name": "Regular Fit Slogan", "price": "1,190"},
    {"name": "Regular Fit Slogan", "price": "1,190"},
    {"name": "Regular Fit Slogan", "price": "1,190"},
    {"name": "Regular Fit Slogan", "price": "1,190"},
  ];

  List<Widget> tabs = const [
    Text("All"),
    Text("T-Shirts"),
    Text("Jeans"),
    Text("Shoes"),
    Text("Belts"),
    Text("Spectacles"),
  ];

  void changeNavbarIndex(int index) {
    selectedIndex = 1;
    rebuildUi();
  }

  void showFilterBottomSheet() {
    bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: "Suher Khan",
      description: "Description",
    );
  }
}
