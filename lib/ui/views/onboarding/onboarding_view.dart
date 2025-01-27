import 'package:ecom_app/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
      backgroundColor: Colors.white, // Adjust this based on your design
      body: SafeArea(
        child: Stack(
          children: [
            // Background Element
            Positioned(
              top: 200,
              left: 0,
              right: 0,
              child: SvgPicture.asset(
                'assets/images/onboarding_element.svg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.6,
              ),
            ),

            // Text
            Positioned(
              top: 12,
              left: 5,
              right: 16,
              child: Text(
                "Define yourself in your unique way.",
                style: GoogleFonts.hankenGrotesk(
                  fontWeight: FontWeight.w800,
                  fontSize: 67, // Adjust font size to fit
                  height: 0.9, // Line height
                  color: Colors.black, // Adjust for better visibility
                ),
              ),
            ),

            // Guy Image
            Positioned(
              bottom: -100, // Adjust based on design

              right: 0,
              child: SvgPicture.asset(
                'assets/images/ob1_guy.svg',
                height: 580, // Adjust size as needed
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: SizedBox(
        width: double.infinity,
        height: 100,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: viewModel.navigationService.navigateToSignUpView,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Get Started",
                  style: GoogleFonts.hankenGrotesk(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ],
            ),
          ),
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
