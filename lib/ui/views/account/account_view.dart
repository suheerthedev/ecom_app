import 'package:ecom_app/app/app.router.dart';
import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:ecom_app/ui/widgets/common/account_listtile/account_listtile.dart';
import 'package:ecom_app/ui/widgets/common/main_appbar/main_appbar.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stacked/stacked.dart';

import 'account_viewmodel.dart';

class AccountView extends StackedView<AccountViewModel> {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AccountViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize:
              Size(double.infinity, MediaQuery.of(context).size.height * 0.2),
          child: const MainAppbar(title: "My Account")),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 6,
            children: [
              const Divider(
                thickness: 10,
                color: lightGrey,
              ),
              AccountListtile(
                title: "My Orders",
                titleColor: mainTextColor,
                leadingIcon: const Icon(
                  Iconsax.box_copy,
                  size: 20,
                ),
                hasDivider: false,
                hasTrailing: true,
                onTapped: () {},
              ),
              const Divider(
                thickness: 10,
                color: lightGrey,
              ),
              AccountListtile(
                title: "My Details",
                titleColor: mainTextColor,
                leadingIcon: const Icon(
                  Iconsax.user_add_copy,
                  size: 20,
                ),
                hasDivider: true,
                hasTrailing: true,
                onTapped: () {},
              ),
              AccountListtile(
                title: "Address Book",
                titleColor: mainTextColor,
                leadingIcon: const Icon(
                  Iconsax.home_2_copy,
                  size: 20,
                ),
                hasDivider: true,
                hasTrailing: true,
                onTapped: () {},
              ),
              AccountListtile(
                title: "Payment Methods",
                titleColor: mainTextColor,
                leadingIcon: const Icon(
                  Iconsax.card_copy,
                  size: 20,
                ),
                hasDivider: true,
                hasTrailing: true,
                onTapped: () {},
              ),
              AccountListtile(
                title: "Notifications",
                titleColor: mainTextColor,
                leadingIcon: const Icon(
                  Iconsax.notification_copy,
                  size: 20,
                ),
                hasDivider: false,
                hasTrailing: true,
                onTapped:
                    viewModel.navigationService.navigateToNotificationView,
              ),
              const Divider(
                thickness: 10,
                color: lightGrey,
              ),
              AccountListtile(
                title: "FAQs",
                titleColor: mainTextColor,
                leadingIcon: const Icon(
                  Iconsax.info_circle_copy,
                  size: 20,
                ),
                hasDivider: true,
                hasTrailing: true,
                onTapped: () {},
              ),
              AccountListtile(
                title: "Help Center",
                titleColor: mainTextColor,
                leadingIcon: const Icon(
                  Iconsax.headphone_copy,
                  size: 20,
                ),
                hasDivider: false,
                hasTrailing: true,
                onTapped: () {},
              ),
              const Divider(
                thickness: 10,
                color: lightGrey,
              ),
              AccountListtile(
                title: "Logout",
                titleColor: errorColor,
                leadingIcon: const Icon(
                  Iconsax.logout_1_copy,
                  color: errorColor,
                  size: 20,
                ),
                hasDivider: false,
                hasTrailing: false,
                onTapped: () {},
              ),
            ],
          ),
        ),
      )),
    );
  }

  @override
  AccountViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AccountViewModel();
}
