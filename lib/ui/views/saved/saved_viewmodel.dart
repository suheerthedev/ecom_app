import 'package:ecom_app/app/app.locator.dart';
import 'package:ecom_app/models/product_model.dart';
import 'package:ecom_app/services/product_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SavedViewModel extends BaseViewModel {
  final NavigationService navigationService = locator<NavigationService>();
  final ProductService productService = locator<ProductService>();

  List<Product> get savedProducts =>
      productService.products.where((product) => product.isSaved).toList();

  void toggleSavedStatus(String id) {
    productService.toggleSavedStatus(id);
    rebuildUi();
  }
}
