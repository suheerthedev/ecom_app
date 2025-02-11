import 'package:ecom_app/app/app.router.dart';
import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "My Account",
                        style: GoogleFonts.hankenGrotesk(
                            wordSpacing: -4,
                            letterSpacing: -1,
                            color: mainTextColor,
                            fontSize: 38,
                            fontWeight: FontWeight.w800),
                      ),
                      IconButton(
                        onPressed: viewModel
                            .navigationService.navigateToNotificationView,
                        icon: const Icon(Iconsax.notification_copy),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  spacing: 6,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: ListTile(
                        leading: const Icon(
                          Iconsax.box_copy,
                          size: 24,
                        ),
                        title: Text(
                          "My Orders",
                          style: GoogleFonts.hankenGrotesk(
                              color: mainTextColor, fontSize: 18),
                        ),
                        trailing: const Icon(
                          Iconsax.arrow_right_3_copy,
                          size: 22,
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 10,
                      color: lightGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(
                              Iconsax.user_add_copy,
                              size: 24,
                            ),
                            title: Text(
                              "My Details",
                              style: GoogleFonts.hankenGrotesk(
                                  color: mainTextColor, fontSize: 18),
                            ),
                            trailing: const Icon(
                              Iconsax.arrow_right_3_copy,
                              size: 22,
                            ),
                          ),
                          const Divider(
                            color: lightGrey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(
                              Iconsax.home_2_copy,
                              size: 24,
                            ),
                            title: Text(
                              "Address Book",
                              style: GoogleFonts.hankenGrotesk(
                                  color: mainTextColor, fontSize: 18),
                            ),
                            trailing: const Icon(
                              Iconsax.arrow_right_3_copy,
                              size: 22,
                            ),
                          ),
                          const Divider(
                            color: lightGrey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(
                              Iconsax.card_copy,
                              size: 24,
                            ),
                            title: Text(
                              "Payment Methods",
                              style: GoogleFonts.hankenGrotesk(
                                  color: mainTextColor, fontSize: 18),
                            ),
                            trailing: const Icon(
                              Iconsax.arrow_right_3_copy,
                              size: 22,
                            ),
                          ),
                          const Divider(
                            color: lightGrey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: ListTile(
                        onTap: viewModel
                            .navigationService.navigateToNotificationView,
                        leading: const Icon(
                          Iconsax.notification_copy,
                          size: 24,
                        ),
                        title: Text(
                          "Notifications",
                          style: GoogleFonts.hankenGrotesk(
                              color: mainTextColor, fontSize: 18),
                        ),
                        trailing: const Icon(
                          Iconsax.arrow_right_3_copy,
                          size: 22,
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 10,
                      color: lightGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(
                              Iconsax.info_circle_copy,
                              size: 24,
                            ),
                            title: Text(
                              "FAQs",
                              style: GoogleFonts.hankenGrotesk(
                                  color: mainTextColor, fontSize: 18),
                            ),
                            trailing: const Icon(
                              Iconsax.arrow_right_3_copy,
                              size: 22,
                            ),
                          ),
                          const Divider(
                            color: lightGrey,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: ListTile(
                        leading: const Icon(
                          Iconsax.headphone_copy,
                          size: 24,
                        ),
                        title: Text(
                          "Help Center",
                          style: GoogleFonts.hankenGrotesk(
                              color: mainTextColor, fontSize: 18),
                        ),
                        trailing: const Icon(
                          Iconsax.arrow_right_3_copy,
                          size: 22,
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 10,
                      color: lightGrey,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: ListTile(
                        leading: const Icon(
                          Iconsax.logout_1_copy,
                          size: 24,
                          color: errorColor,
                        ),
                        title: Text(
                          "Logout",
                          style: GoogleFonts.hankenGrotesk(
                              color: errorColor, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
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
