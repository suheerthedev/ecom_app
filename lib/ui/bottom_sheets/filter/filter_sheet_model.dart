import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class FilterSheetModel extends BaseViewModel {
  final NavigationService navigationService = NavigationService();
  List filterOptions = [];

  List<Widget> filterTabs = const [
    Text("Relevance"),
    Text("Price: Low - High"),
    Text("Price: High - Low"),
  ];

  //For Size
  String selectedSize = 'M'; // Default selected size
  List<String> sizeOptions = ['S', 'M', 'L', 'XL'];

  //For RangeSlider
  double minPrice = 0;
  double maxPrice = 199;
  RangeValues priceRange = const RangeValues(0, 199);

  void onChanged(RangeValues values) {
    priceRange = values;
    rebuildUi();
  }

  void dropDownOnChanged(String? newValue) {
    selectedSize = newValue!;
    rebuildUi();
  }

  void applyFilters() {
    //filter logic here
    navigationService.back();
  }
}
