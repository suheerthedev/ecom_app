import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stacked/stacked.dart';

import 'product_card_1_model.dart';

class ProductCard1 extends StackedView<ProductCard1Model> {
  final String productName;
  final String productPrice;
  const ProductCard1(this.productName, this.productPrice, {super.key});

  @override
  Widget builder(
    BuildContext context,
    ProductCard1Model viewModel,
    Widget? child,
  ) {
    return SizedBox(
      width: 150,
      height: 250,
      child: Stack(children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5,
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Container(
                    width: double.infinity, height: 170, color: Colors.black)),
            Text(
              productName,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.hankenGrotesk(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: mainTextColor),
            ),
            Text(
              "\$ $productPrice",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.hankenGrotesk(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: lightTextColor),
            )
          ],
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Container(
                padding: EdgeInsets.zero,
                width: 35,
                height: 35,
                color: Colors.white70,
                child: IconButton(
                  isSelected: viewModel.status,
                  selectedIcon: const Icon(
                    Iconsax.heart,
                    color: Colors.red,
                  ),
                  padding: EdgeInsets.zero,
                  onPressed: viewModel.buttonSelected,
                  icon: const Icon(
                    Iconsax.heart_copy,
                    color: mainIconColor,
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  @override
  ProductCard1Model viewModelBuilder(
    BuildContext context,
  ) =>
      ProductCard1Model();
}
