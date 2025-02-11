import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stacked/stacked.dart';

import 'account_listtile_model.dart';

class AccountListtile extends StackedView<AccountListtileModel> {
  final String title;
  final Color titleColor;
  final Icon leadingIcon;
  final bool hasDivider;
  final bool hasTrailing;
  final VoidCallback onTapped;
  const AccountListtile(
      {required this.title,
      required this.titleColor,
      required this.leadingIcon,
      required this.hasDivider,
      required this.hasTrailing,
      required this.onTapped,
      super.key});

  @override
  Widget builder(
    BuildContext context,
    AccountListtileModel viewModel,
    Widget? child,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          ListTile(
            onTap: onTapped,
            leading: leadingIcon,
            title: Text(
              title,
              style: GoogleFonts.hankenGrotesk(color: titleColor, fontSize: 16),
            ),
            trailing: hasTrailing
                ? const Icon(
                    Iconsax.arrow_right_3_copy,
                    size: 16,
                  )
                : const Icon(null),
          ),
          hasDivider
              ? const Divider(
                  color: lightGrey,
                )
              : const SizedBox()
        ],
      ),
    );
  }

  @override
  AccountListtileModel viewModelBuilder(
    BuildContext context,
  ) =>
      AccountListtileModel();
}
