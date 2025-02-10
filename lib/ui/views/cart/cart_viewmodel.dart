import 'package:ecom_app/app/app.bottomsheets.dart';
import 'package:ecom_app/app/app.locator.dart';
import 'package:ecom_app/models/product_model.dart';
import 'package:ecom_app/services/product_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CartViewModel extends BaseViewModel {
  final NavigationService navigationService = locator<NavigationService>();
  final BottomSheetService bottomSheetService = locator<BottomSheetService>();

  final ProductService productService = locator<ProductService>();

  List<Product> get products => productService.products;


  void showCheckoutBottomSheet() async {
    var response = await bottomSheetService.showCustomSheet(
      variant: BottomSheetType.filter, // Customize this based on your app setup
      title: "Checkout",
      description: "Review your cart before proceeding to payment.",
    );

    if (response?.confirmed == true) {
      // Handle confirmation action (e.g., navigate to payment screen)
      navigationService.navigateTo('/checkout');
    }
  }
  
}
