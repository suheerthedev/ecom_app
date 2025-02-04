import 'package:ecom_app/app/app.bottomsheets.dart';
import 'package:ecom_app/app/app.dialogs.dart';
import 'package:ecom_app/app/app.locator.dart';
import 'package:ecom_app/ui/common/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _dialogService = locator<DialogService>();
  final NavigationService navigationService = locator<NavigationService>();
  final _bottomSheetService = locator<BottomSheetService>();

  String get counterLabel => 'Counter is: $_counter';

  List products = [
    {"name": "Regular Fit Slogan", "price": "1,190"},
    {"name": "Regular Fit Slogan", "price": "1,190"},
    {"name": "Regular Fit Slogan", "price": "1,190"},
    {"name": "Regular Fit Slogan", "price": "1,190"},
    {"name": "Regular Fit Slogan", "price": "1,190"},
    {"name": "Regular Fit Slogan", "price": "1,190"},
    {"name": "Regular Fit Slogan", "price": "1,190"},
  ];

  List<Widget> tabs = [
    Text("All"),
    Text("T-Shirts"),
    Text("Jeans"),
    Text("Shoes"),
    Text("Belts"),
    Text("Spectacles"),
  ];

  int _counter = 0;

  void incrementCounter() {
    _counter++;
    rebuildUi();
  }

  void showDialog() {
    _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Stacked Rocks!',
      description: 'Give stacked $_counter stars on Github',
    );
  }

  void showBottomSheet() {
    _bottomSheetService.showCustomSheet(
      variant: BottomSheetType.notice,
      title: ksHomeBottomSheetTitle,
      description: ksHomeBottomSheetDescription,
    );
  }
}
