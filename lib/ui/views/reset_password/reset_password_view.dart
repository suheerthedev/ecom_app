import 'package:ecom_app/app/app.router.dart';
import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import 'reset_password_viewmodel.dart';

class ResetPasswordView extends StackedView<ResetPasswordViewModel> {
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ResetPasswordViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 25,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Reset Password",
                      style: GoogleFonts.hankenGrotesk(
                          wordSpacing: -4,
                          color: mainTextColor,
                          fontSize: 36,
                          fontWeight: FontWeight.w800),
                    ),
                    Text(
                      "Set the new password for your account so you can login and access all the features.",
                      style: GoogleFonts.hankenGrotesk(
                          color: lightTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Column(
                  spacing: 2,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: GoogleFonts.hankenGrotesk(
                          color: mainTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter New Password",
                        hintStyle: GoogleFonts.hankenGrotesk(
                          color: lightTextColor,
                          fontWeight: FontWeight.w300,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.visibility_off_outlined,
                              color: iconColor,
                            )),
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
                  ],
                ),
                Column(
                  spacing: 2,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: GoogleFonts.hankenGrotesk(
                          color: mainTextColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Re-enter New Password",
                        hintStyle: GoogleFonts.hankenGrotesk(
                          color: lightTextColor,
                          fontWeight: FontWeight.w300,
                        ),
                        suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.visibility_off_outlined,
                              color: iconColor,
                            )),
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: viewModel.navigationService.navigateToResetPasswordView,
            child: Text(
              "Continue",
              style: GoogleFonts.hankenGrotesk(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  ResetPasswordViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ResetPasswordViewModel();
}
