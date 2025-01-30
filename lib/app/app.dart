import 'package:ecom_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:ecom_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:ecom_app/ui/views/home/home_view.dart';
import 'package:ecom_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:ecom_app/ui/views/onboarding/onboarding_view.dart';
import 'package:ecom_app/ui/views/sign_up/sign_up_view.dart';
import 'package:ecom_app/ui/views/login/login_view.dart';
import 'package:ecom_app/ui/views/forgot_password/forgot_password_view.dart';
import 'package:ecom_app/ui/views/verification/verification_view.dart';
import 'package:ecom_app/ui/views/reset_password/reset_password_view.dart';
import 'package:ecom_app/ui/dialogs/success/success_dialog.dart';
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
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    StackedDialog(classType: SuccessDialog),
// @stacked-dialog
  ],
)
class App {}
