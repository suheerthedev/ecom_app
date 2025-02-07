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
          spacing: 12,
          children: [
            TextField(
              cursorColor: mainBackgroundColor,
              autofocus: false,
              onChanged: viewModel.searchProducts,
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
            Expanded(
                child: viewModel.filteredProducts.isEmpty
                    ? Center(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 15,
                            children: [
                              const Icon(
                                Iconsax.search_normal_copy,
                                size: 48,
                                color: iconColor,
                              ),
                              Text(
                                "No Results Found!",
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
                                  "Try a similar word or something more general.",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.hankenGrotesk(
                                      fontSize: 16, color: lightTextColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : ListView.builder(
                        itemCount: viewModel.filteredProducts.length,
                        itemBuilder: (context, index) {
                          final product = viewModel.filteredProducts[index];
                          return Column(
                            children: [
                              ListTile(
                                contentPadding: EdgeInsets.all(10),
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Container(
                                    width: 55,
                                    height: 55,
                                    color: mainBackgroundColor,
                                  ),
                                ),
                                title: Text(
                                  product.title,
                                  style: GoogleFonts.hankenGrotesk(
                                      fontWeight: FontWeight.w600),
                                ),
                                subtitle: Text(
                                  "\$ ${product.price}",
                                  style: GoogleFonts.hankenGrotesk(),
                                ),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Iconsax.arrow_right_copy),
                                ),
                              ),
                              const Divider(height: 10)
                            ],
                          );
                        })),
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

// Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "Recent Searches",
//                   style: GoogleFonts.hankenGrotesk(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: mainTextColor),
//                 ),
//                 Text(
//                   "Clear All",
//                   style: GoogleFonts.hankenGrotesk(
//                       fontSize: 16,
//                       fontWeight: FontWeight.w400,
//                       decoration: TextDecoration.underline,
//                       color: mainTextColor),
//                 )
//               ],
//             ),
//             Expanded(
//               child: ListView.builder(
//                   itemCount: viewModel.recentSearches.length,
//                   itemBuilder: (context, index) {
//                     return Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Padding(
//                               padding: const EdgeInsets.only(left: 8.0),
//                               child: Text(
//                                 viewModel.recentSearches[index],
//                                 style: GoogleFonts.hankenGrotesk(fontSize: 16),
//                               ),
//                             ),
//                             IconButton(
//                                 onPressed: () {},
//                                 icon: const Icon(
//                                   FontAwesomeIcons.circleXmark,
//                                   size: 16,
//                                 )),
//                           ],
//                         ),
//                         const Divider(
//                           height: 10,
//                         )
//                       ],
//                     );
//                   }),
//             )
