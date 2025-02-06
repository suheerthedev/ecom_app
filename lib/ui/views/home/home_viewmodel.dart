import 'package:ecom_app/app/app.bottomsheets.dart';
import 'package:ecom_app/app/app.locator.dart';
import 'package:ecom_app/app/app.router.dart';
import 'package:ecom_app/models/product_model.dart';
import 'package:ecom_app/services/product_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final NavigationService navigationService = locator<NavigationService>();
  final BottomSheetService bottomSheetService = locator<BottomSheetService>();
  final ProductService productService = locator<ProductService>();

  List<Product> get products => productService.products;

  int selectedIndex = 0;


  List<Widget> tabs = const [
    Text("All"),
    Text("T-Shirts"),
    Text("Jeans"),
    Text("Shoes"),
    Text("Belts"),
    Text("Spectacles"),
  ];

  void changeNavbarIndex(int index) {
    selectedIndex = index;
    rebuildUi();
  }

  void showFilterBottomSheet() {
    bottomSheetService.showCustomSheet(
      variant: BottomSheetType.filter,
      title: "Suher Khan",
      description: "Description",
    );
  }

  void navigateToSearchView() {
    navigationService.navigateToSearchView();
  }

  void toggleSavedStatus(String id) {
    productService.toggleSavedStatus(id);
    rebuildUi();
  }
}
