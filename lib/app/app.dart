import 'package:ecom_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:ecom_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:ecom_app/ui/views/home/home_view.dart';
import 'package:ecom_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:ecom_app/ui/views/onboarding/onboarding_view.dart';
import 'package:ecom_app/ui/views/sign_up/sign_up_view.dart';
import 'package:ecom_app/ui/views/login/login_view.dart';
import 'package:ecom_app/ui/views/forgot_password/forgot_password_view.dart';
import 'package:ecom_app/ui/views/verification/verification_view.dart';
import 'package:ecom_app/ui/views/reset_password/reset_password_view.dart';
import 'package:ecom_app/ui/dialogs/success/success_dialog.dart';
import 'package:ecom_app/ui/views/notification/notification_view.dart';
import 'package:ecom_app/ui/bottom_sheets/filter/filter_sheet.dart';
import 'package:ecom_app/ui/views/search/search_view.dart';
import 'package:ecom_app/services/product_service.dart';
import 'package:ecom_app/ui/views/main/main_view.dart';
import 'package:ecom_app/ui/views/saved/saved_view.dart';
import 'package:ecom_app/ui/views/cart/cart_view.dart';
import 'package:ecom_app/ui/views/product_detail/product_detail_view.dart';
import 'package:ecom_app/ui/views/account/account_view.dart';
import 'package:ecom_app/ui/views/checkout/checkout_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: OnboardingView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: ForgotPasswordView),
    MaterialRoute(page: VerificationView),
    MaterialRoute(page: ResetPasswordView),
    MaterialRoute(page: NotificationView),
    CustomRoute(
        page: SearchView, transitionsBuilder: TransitionsBuilders.fadeIn),
    MaterialRoute(page: MainView),
    MaterialRoute(page: SavedView),
    MaterialRoute(page: CartView),
    MaterialRoute(page: ProductDetailView),
    MaterialRoute(page: AccountView),
    MaterialRoute(page: CheckoutView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: ProductService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    StackedBottomsheet(classType: FilterSheet),
// @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    StackedDialog(classType: SuccessDialog),
// @stacked-dialog
  ],
)
class App {}
