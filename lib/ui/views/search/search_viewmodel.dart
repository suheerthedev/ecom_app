import 'package:ecom_app/app/app.locator.dart';
import 'package:ecom_app/models/product_model.dart';
import 'package:ecom_app/services/product_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SearchViewModel extends BaseViewModel {
  final NavigationService navigationService = NavigationService();
  final ProductService productService = locator<ProductService>();

  List<Product> get products => productService.products;

  List recentSearches = [
    "Jeans",
    "Casual Clothes",
    "Hoodie",
    "Nike shoes black",
    "V-neck shirt",
    "Winter clothes"
  ];
}
