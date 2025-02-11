import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:ecom_app/ui/widgets/common/main_appbar/main_appbar.dart';
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
        appBar: PreferredSize(
            preferredSize:
                Size(double.infinity, MediaQuery.of(context).size.height * 0.2),
            child: const MainAppbar(title: "Saved")),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              Expanded(
                child: viewModel.savedProducts.isEmpty
                    ? Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 15,
                            children: [
                              const Icon(
                                Iconsax.heart_copy,
                                size: 48,
                                color: iconColor,
                              ),
                              Text(
                                "No Saved Items!",
                                textAlign: TextAlign.center,
                                style: GoogleFonts.hankenGrotesk(
                                    fontSize: 22,
                                    color: mainTextColor,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 26.0),
                                child: Text(
                                  "You don't have any saved items. Go to home and add some",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.hankenGrotesk(
                                      fontSize: 16, color: lightTextColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
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
                              isTappable: false,
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
