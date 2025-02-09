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
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
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
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        viewModel.products[0].title,
                                        style: GoogleFonts.hankenGrotesk(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        viewModel.products[0].rating.toString(),
                                        style: GoogleFonts.hankenGrotesk(
                                            color: lightTextColor),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Iconsax.trash,
                                        size: 18,
                                        color: errorColor,
                                      ))
                                ],
                              ),
                            ),
                            Expanded(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$ ${viewModel.products[0].price.toString()}",
                                    style: GoogleFonts.hankenGrotesk(
                                        color: lightTextColor),
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: viewModel.decrementCounter,
                                          icon: const Icon(
                                            Iconsax.minus,
                                            size: 20,
                                            color: darkIconColor,
                                          )),
                                      Text(viewModel.counter.toString()),
                                      IconButton(
                                          onPressed: viewModel.incrementCounter,
                                          icon: const Icon(
                                            Iconsax.add,
                                            size: 20,
                                            color: darkIconColor,
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
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
