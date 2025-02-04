import 'package:stacked/stacked.dart';

class ProductCard1Model extends BaseViewModel {
  bool status = false;
  void buttonSelected() {
    status = !status;
    rebuildUi();
  }
}
