import 'package:ecom_app/app/app.locator.dart';
import 'package:ecom_app/models/product_model.dart';
import 'package:ecom_app/services/product_service.dart';
import 'package:stacked/stacked.dart';

class SavedProductService with ListenableServiceMixin  {
  ProductService productService = locator<ProductService>();
  List<Product> get _savedProducts => productService.products;

  SavedProductsService() {
    listenToReactiveValues([_savedProducts]);
  }

  void addProduct(Product product) {
    _savedProducts.add(product);
    notifyListeners(); 
  }

  void removeProduct(String id) {
    _savedProducts.removeWhere((p) => p.id == id);
    notifyListeners(); 
  }
}
