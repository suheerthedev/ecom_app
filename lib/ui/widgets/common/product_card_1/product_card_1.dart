import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 2,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(width: 150, height: 150, color: Colors.black)),
          Text(
            productName,
            style: GoogleFonts.hankenGrotesk(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: mainTextColor),
          ),
          Text(
            "\$ $productPrice",
            style: GoogleFonts.hankenGrotesk(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: lightTextColor),
          )
        ],
      ),
    );
  }

  @override
  ProductCard1Model viewModelBuilder(
    BuildContext context,
  ) =>
      ProductCard1Model();
}
