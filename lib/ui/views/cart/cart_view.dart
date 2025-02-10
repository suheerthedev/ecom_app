import 'package:ecom_app/app/app.router.dart';
import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stacked/stacked.dart';

import 'cart_viewmodel.dart';

class CartView extends StackedView<CartViewModel> {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CartViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 12,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Cart",
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
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                border: Border.all(color: lightBackgroundColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        width: 90,
                        height: double.maxFinite,
                        color: mainBackgroundColor,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      viewModel.products[0].title,
                                      style: GoogleFonts.hankenGrotesk(
                                          fontSize: 20,
                                          letterSpacing: -1,
                                          color: mainTextColor,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      viewModel.products[0].rating.toString(),
                                      style: GoogleFonts.hankenGrotesk(
                                          color: lightTextColor),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: const Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Iconsax.trash,
                                      size: 18,
                                      color: errorColor,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "\$ ${viewModel.products[0].price.toString()}",
                                    style: GoogleFonts.hankenGrotesk(
                                        fontSize: 16,
                                        letterSpacing: 0,
                                        color: mainTextColor,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    spacing: 10,
                                    children: [
                                      InkWell(
                                        onTap: viewModel.decrementCounter,
                                        child: const Icon(
                                          Iconsax.minus,
                                          size: 20,
                                          color: darkIconColor,
                                        ),
                                      ),
                                      Text(
                                        viewModel.counter.toString(),
                                        style: GoogleFonts.hankenGrotesk(),
                                      ),
                                      InkWell(
                                        onTap: viewModel.incrementCounter,
                                        child: const Icon(
                                          Iconsax.add,
                                          size: 20,
                                          color: darkIconColor,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }

  @override
  CartViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CartViewModel();
}
