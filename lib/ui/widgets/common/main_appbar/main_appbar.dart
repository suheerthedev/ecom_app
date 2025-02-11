import 'package:ecom_app/app/app.router.dart';
import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stacked/stacked.dart';

import 'main_appbar_model.dart';

class MainAppbar extends StackedView<MainAppbarModel> {
  final String title;
  const MainAppbar({required this.title, super.key});

  @override
  Widget builder(
    BuildContext context,
    MainAppbarModel viewModel,
    Widget? child,
  ) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: GoogleFonts.hankenGrotesk(
                      wordSpacing: -4,
                      letterSpacing: -1,
                      color: mainTextColor,
                      fontSize: 38,
                      fontWeight: FontWeight.w800),
                ),
                IconButton(
                  onPressed:
                      viewModel.navigationService.navigateToNotificationView,
                  icon: const Icon(Iconsax.notification_copy),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  MainAppbarModel viewModelBuilder(
    BuildContext context,
  ) =>
      MainAppbarModel();
}
