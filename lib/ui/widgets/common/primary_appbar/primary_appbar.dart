import 'package:ecom_app/app/app.router.dart';
import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stacked/stacked.dart';

import 'primary_appbar_model.dart';

class PrimaryAppbar extends StackedView<PrimaryAppbarModel>
    implements PreferredSizeWidget {
  final String title;
  const PrimaryAppbar({required this.title, super.key});

  @override
  Widget builder(
    BuildContext context,
    PrimaryAppbarModel viewModel,
    Widget? child,
  ) {
    return AppBar(
      surfaceTintColor: secondaryBackgroundColor,
      centerTitle: true,
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
  PrimaryAppbarModel viewModelBuilder(
    BuildContext context,
  ) =>
      PrimaryAppbarModel();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
