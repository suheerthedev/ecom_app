import 'package:ecom_app/models/product_model.dart';
import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stacked/stacked.dart';

import 'product_card_3_model.dart';

class ProductCard3 extends StackedView<ProductCard3Model> {
  final Product product;
  final VoidCallback onTapped;
  const ProductCard3(
      {required this.onTapped, required this.product, super.key});

  @override
  Widget builder(
    BuildContext context,
    ProductCard3Model viewModel,
    Widget? child,
  ) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          child: ListTile(
            onTap: onTapped,
            contentPadding: EdgeInsets.zero,
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 65,
                height: 95,
                color: mainBackgroundColor,
              ),
            ),
            title: Text(
              product.title,
              style: GoogleFonts.hankenGrotesk(
                  letterSpacing: -1, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "\$ ${product.price}",
              style: GoogleFonts.hankenGrotesk(color: lightTextColor),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Iconsax.arrow_right_copy),
            ),
          ),
        ),
        const Divider(height: 10)
      ],
    );
  }

  @override
  ProductCard3Model viewModelBuilder(
    BuildContext context,
  ) =>
      ProductCard3Model();
}
