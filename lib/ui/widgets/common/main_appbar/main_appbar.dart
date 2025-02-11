import 'package:ecom_app/app/app.router.dart';
import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stacked/stacked.dart';

import 'main_appbar_model.dart';

class MainAppbar extends StackedView<MainAppbarModel>
    implements PreferredSizeWidget {
  final String title;

  const MainAppbar({required this.title, super.key});

  @override
  Widget builder(
    BuildContext context,
    MainAppbarModel viewModel,
    Widget? child,
  ) {
    return AppBar(
      surfaceTintColor: secondaryBackgroundColor,
      title: Text(
        title,
        style: GoogleFonts.hankenGrotesk(
            wordSpacing: -4,
            letterSpacing: -1,
            color: mainTextColor,
            fontSize: 38,
            fontWeight: FontWeight.w800),
      ),
      actions: [
        IconButton(
          onPressed: viewModel.navigationService.navigateToNotificationView,
          icon: const Icon(Iconsax.notification_copy),
        ),
      ],
      backgroundColor: Colors.white,
      elevation: 0,
    );
  }

  @override
  MainAppbarModel viewModelBuilder(BuildContext context) => MainAppbarModel();

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // Required for PreferredSizeWidget
}
