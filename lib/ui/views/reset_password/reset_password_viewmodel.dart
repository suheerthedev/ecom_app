import 'package:ecom_app/app/app.dialogs.dart';
import 'package:ecom_app/ui/dialogs/success/success_dialog.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ResetPasswordViewModel extends BaseViewModel {
  final NavigationService navigationService = NavigationService();
  final DialogService dialogService = DialogService();

  final builders = {
    DialogType.success: (context, sheetRequest, completer) =>
        SuccessDialog(request: sheetRequest, completer: completer),
  };
  void successDialog() {
    dialogService.registerCustomDialogBuilders(builders);
    dialogService.showCustomDialog(
        variant: DialogType.success,
        title: "Password Changed!",
        description:
            "You can now use your new password to login to your account.",
        mainButtonTitle: "Login");
  }
}
