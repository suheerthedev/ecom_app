import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'filter_sheet_model.dart';

class FilterSheet extends StackedView<FilterSheetModel> {
  final Function(SheetResponse response)? completer;
  final SheetRequest request;
  const FilterSheet({
    Key? key,
    required this.completer,
    required this.request,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    FilterSheetModel viewModel,
    Widget? child,
  ) {
    return DefaultTabController(
      length: viewModel.filterTabs.length,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          spacing: 10,
          children: [
            Text("Sort By",
                style: GoogleFonts.hankenGrotesk(
                    fontSize: 18, fontWeight: FontWeight.bold)),
            TabBar(
              tabAlignment: TabAlignment.start,
              tabs: viewModel.filterTabs,
              isScrollable: true,
              dividerHeight: 0,
              labelColor: secondaryTextColor,
              unselectedLabelColor: mainTextColor,
              unselectedLabelStyle: GoogleFonts.hankenGrotesk(
                  fontSize: 16,
                  letterSpacing: -1,
                  fontWeight: FontWeight.normal),
              labelPadding:
                  const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
              labelStyle: GoogleFonts.hankenGrotesk(
                  fontSize: 16, letterSpacing: -1, fontWeight: FontWeight.bold),
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(5)),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Price",
                    style: GoogleFonts.hankenGrotesk(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                Row(
                  spacing: 0,
                  children: [
                    Text("\$${viewModel.priceRange.start.toStringAsFixed(0)} ",
                        style: GoogleFonts.hankenGrotesk(fontSize: 16)),
                    Text("- \$${viewModel.priceRange.end.toStringAsFixed(0)}",
                        style: GoogleFonts.hankenGrotesk(fontSize: 16)),
                  ],
                ),
              ],
            ),
            RangeSlider(
                values: viewModel.priceRange,
                min: viewModel.minPrice,
                max: viewModel.maxPrice,
                activeColor: mainBackgroundColor,
                inactiveColor: secondaryBackgroundColor,
                divisions: 20,
                onChanged: viewModel.onChanged),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Size",
                    style: GoogleFonts.hankenGrotesk(
                        fontSize: 18, fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: DropdownButton(
                    value: viewModel.selectedSize,
                    icon: const Icon(Iconsax.arrow_down_1_copy),
                    iconSize: 24,
                    elevation: 16,
                    borderRadius: BorderRadius.circular(25),
                    dropdownColor: secondaryBackgroundColor,
                    style: GoogleFonts.hankenGrotesk(
                        fontSize: 16, color: mainTextColor),
                    onChanged: viewModel.dropDownOnChanged,
                    items: viewModel.sizeOptions
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: viewModel.applyFilters,
                child: Text(
                  "Apply Filters",
                  style: GoogleFonts.hankenGrotesk(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  FilterSheetModel viewModelBuilder(BuildContext context) => FilterSheetModel();
}
