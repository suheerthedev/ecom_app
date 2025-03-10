import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:ecom_app/ui/views/account/account_view.dart';
import 'package:ecom_app/ui/views/cart/cart_view.dart';
import 'package:ecom_app/ui/views/home/home_view.dart';
import 'package:ecom_app/ui/views/saved/saved_view.dart';
import 'package:ecom_app/ui/views/search/search_view.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stacked/stacked.dart';

import 'main_viewmodel.dart';

class MainView extends StackedView<MainViewModel> {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MainViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: IndexedStack(
        index: viewModel.selectedIndex,
        children: [
          Material(
            child: Navigator(
              onGenerateRoute: (settings) =>
                  MaterialPageRoute(builder: (context) => const HomeView()),
            ),
          ),
          Navigator(
            onGenerateRoute: (settings) =>
                MaterialPageRoute(builder: (context) => const SearchView()),
          ),
          Navigator(
            onGenerateRoute: (settings) =>
                MaterialPageRoute(builder: (context) => const SavedView()),
          ),
          Navigator(
            onGenerateRoute: (settings) =>
                MaterialPageRoute(builder: (context) => const CartView()),
          ),
          Navigator(
            onGenerateRoute: (settings) =>
                MaterialPageRoute(builder: (context) => const AccountView()),
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: secondaryBackgroundColor,
        indicatorColor: Colors.transparent,
        selectedIndex: viewModel.selectedIndex,
        onDestinationSelected: viewModel.changeNavbarIndex,
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Iconsax.home),
            icon: Icon(Iconsax.home_copy),
            label: "Home",
          ),
          NavigationDestination(
            selectedIcon: Icon(Iconsax.search_normal),
            icon: Icon(Iconsax.search_normal_copy),
            label: "Search",
          ),
          NavigationDestination(
            selectedIcon: Icon(Iconsax.heart),
            icon: Icon(Iconsax.heart_copy),
            label: "Saved",
          ),
          NavigationDestination(
            selectedIcon: Icon(Iconsax.shopping_bag),
            icon: Icon(Iconsax.shopping_bag_copy),
            label: "Cart",
          ),
          NavigationDestination(
            selectedIcon: Icon(Iconsax.user),
            icon: Icon(Iconsax.user_copy),
            label: "Account",
          ),
        ],
      ),
    );
  }

  @override
  MainViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MainViewModel();
}
