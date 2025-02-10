import 'package:ecom_app/app/app.router.dart';
import 'package:ecom_app/ui/widgets/common/product_card_1/product_card_1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:ecom_app/ui/common/app_colors.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return DefaultTabController(
      length: viewModel.tabs.length,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 12,
                children: [
                  //Heading and Notification Icon
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Discover",
                        style: GoogleFonts.hankenGrotesk(
                            wordSpacing: -4,
                            letterSpacing: -1,
                            color: mainTextColor,
                            fontSize: 38,
                            fontWeight: FontWeight.w800),
                      ),
                      IconButton(
                        onPressed: viewModel
                            .navigationService.navigateToNotificationView,
                        icon: const Icon(Iconsax.notification_copy),
                      )
                    ],
                  ),

                  //TextField and Sort Button
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          autofocus: false,
                          onTap: viewModel.navigateToSearchView,
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
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: FloatingActionButton(
                          onPressed: viewModel.showFilterBottomSheet,
                          backgroundColor: mainBtnColor,
                          heroTag: null,
                          elevation: 0,
                          child: const Icon(
                            Iconsax.sort_copy,
                            color: mainIconColor,
                          ),
                        ),
                      )
                    ],
                  ),

                  //TabBar
                  TabBar(
                    tabAlignment: TabAlignment.start,
                    tabs: viewModel.tabs,
                    isScrollable: true,
                    dividerHeight: 0,
                    labelColor: secondaryTextColor,
                    unselectedLabelColor: mainTextColor,
                    unselectedLabelStyle: GoogleFonts.hankenGrotesk(
                        fontSize: 17,
                        letterSpacing: -1,
                        fontWeight: FontWeight.normal),
                    labelPadding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                    labelStyle: GoogleFonts.hankenGrotesk(
                        fontSize: 17,
                        letterSpacing: -1,
                        fontWeight: FontWeight.bold),
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(5)),
                  ),

                  //Product Grid
                  Expanded(
                    child: TabBarView(
                      children: List.generate(
                        viewModel.tabs.length,
                        (index) => GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 300,
                              mainAxisExtent: 230,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 15,
                            ),
                            itemCount: viewModel.products.length,
                            itemBuilder: (context, index) {
                              final product = viewModel.products[index];
                              return ProductCard1(
                                product: product,
                                onToggleSaved: () =>
                                    viewModel.toggleSavedStatus(product.id),
                                isTappable: true,
                              );
                            }),
                      ),
                    ),

                    //Another widget
                  )
                ],
              )),
        ),
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
