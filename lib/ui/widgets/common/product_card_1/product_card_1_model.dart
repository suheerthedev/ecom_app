import 'package:stacked/stacked.dart';

class ProductCard1Model extends BaseViewModel {
  void buttonSelected(bool status) {
    status = !status;
    rebuildUi();
  }
}
