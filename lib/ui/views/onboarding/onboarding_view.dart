import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'onboarding_viewmodel.dart';

class OnboardingView extends StackedView<OnboardingViewModel> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OnboardingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: secondaryBackgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.black,
            )
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 22),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: mainBackgroundColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              onPressed: () {},
              child: Row(
                spacing: 7,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get Started",
                    style: GoogleFonts.hankenGrotesk(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                  const   Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  )
                ],
              )),
        ),
      ),
    );
  }

  @override
  OnboardingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OnboardingViewModel();
}
