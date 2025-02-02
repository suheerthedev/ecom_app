import 'package:ecom_app/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final NavigationService navigationService = NavigationService();

  void loginSuccess() {
    navigationService.clearStackAndShow(Routes.homeView);
  }
}
