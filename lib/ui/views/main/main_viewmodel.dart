import 'package:stacked/stacked.dart';

class MainViewModel extends BaseViewModel {

  int selectedIndex = 0;

  // Method to change bottom navigation index
  void changeNavbarIndex(int index) {
    selectedIndex = index;
    rebuildUi();
  }
  
}
