import 'package:ecom_app/app/app.router.dart';
import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:ecom_app/ui/widgets/common/product_card_1/product_card_1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stacked/stacked.dart';

import 'saved_viewmodel.dart';

class SavedView extends StackedView<SavedViewModel> {
  const SavedView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SavedViewModel viewModel,
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
                "Saved",
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
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  mainAxisExtent: 230,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemCount: viewModel.savedProducts.length,
                itemBuilder: (context, index) {
                  if (viewModel.savedProducts.isEmpty) {
                    return const Center(
                      child: Text("List is empty"),
                    );
                  } else {
                    final product = viewModel.savedProducts[index];
                    return ProductCard1(
                      product: product,
                      onToggleSaved: () =>
                          viewModel.toggleSavedStatus(product.id),
                    );
                  }
                }),
          )
        ],
      ),
    )));
  }

  @override
  SavedViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SavedViewModel();
}
