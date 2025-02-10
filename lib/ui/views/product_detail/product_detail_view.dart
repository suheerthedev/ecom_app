import 'package:ecom_app/app/app.router.dart';
import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stacked/stacked.dart';

import 'product_detail_viewmodel.dart';

class ProductDetailView extends StackedView<ProductDetailViewModel> {
  final String title;
  final double ratings;
  final String description;
  final List sizes;
  final double price;

  const ProductDetailView(
      {required this.title,
      required this.ratings,
      required this.description,
      required this.sizes,
      required this.price,
      Key? key})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ProductDetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Details",
          style: GoogleFonts.hankenGrotesk(
              wordSpacing: -4,
              letterSpacing: -1,
              color: mainTextColor,
              fontSize: 30,
              fontWeight: FontWeight.w800),
        ),
        actions: [
          IconButton(
            onPressed: viewModel.navigationService.navigateToNotificationView,
            icon: const Icon(Iconsax.notification_copy),
          )
        ],
      ),
    );
  }

  @override
  ProductDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ProductDetailViewModel();
}
