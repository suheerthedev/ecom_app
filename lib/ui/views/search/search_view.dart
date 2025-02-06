import 'package:ecom_app/app/app.router.dart';
import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stacked/stacked.dart';

import 'search_viewmodel.dart';

class SearchView extends StackedView<SearchViewModel> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Search",
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
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: TextField(
                autofocus: true,
                onTap: viewModel.navigationService.navigateToSearchView,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  prefixIcon: const Icon(Iconsax.search_normal_copy),
                  suffixIcon: const Icon(Iconsax.microphone_2_copy),
                  hintText: "Search for clothes and other stuff",
                  hintMaxLines: 1,
                  hintStyle: GoogleFonts.hankenGrotesk(
                    color: lightTextColor,
                    letterSpacing: 0,
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(color: Colors.red),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  @override
  SearchViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchViewModel();
}
