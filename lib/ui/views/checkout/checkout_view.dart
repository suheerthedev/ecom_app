import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:ecom_app/ui/widgets/common/primary_appbar/primary_appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stacked/stacked.dart';

import 'checkout_viewmodel.dart';

class CheckoutView extends StackedView<CheckoutViewModel> {
  const CheckoutView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CheckoutViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        appBar: const PrimaryAppbar(title: "Checkout"),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              const Divider(
                color: lightGrey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Delivery Address",
                    style: GoogleFonts.hankenGrotesk(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Change",
                    style: GoogleFonts.hankenGrotesk(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              Row(
                spacing: 15,
                children: [
                  const Icon(
                    Iconsax.location_copy,
                    color: lightTextColor,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Home",
                        style: GoogleFonts.hankenGrotesk(
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Home 925 S Chugach St #APT 10, Alaska 99645",
                        style: GoogleFonts.hankenGrotesk(color: lightTextColor),
                      )
                    ],
                  )
                ],
              ),
              const Divider(
                color: lightGrey,
              ),
              Text(
                "Payment Method",
                style: GoogleFonts.hankenGrotesk(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: viewModel.method.map((size) {
                  bool isSelected = size == viewModel.selectedMethod;

                  return GestureDetector(
                    onTap: () {
                      viewModel.selectedMethod = size;
                      viewModel.rebuildUi();
                    },
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 14),
                        width: MediaQuery.of(context).size.width * 0.25,
                        decoration: BoxDecoration(
                          color: isSelected ? Colors.black : Colors.white,
                          border: Border.all(
                            color: isSelected ? Colors.black : Colors.grey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                size,
                                style: GoogleFonts.hankenGrotesk(
                                  color:
                                      isSelected ? Colors.white : Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        )));
  }

  @override
  CheckoutViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CheckoutViewModel();
}
