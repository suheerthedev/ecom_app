import 'package:flutter/material.dart';
import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:ecom_app/ui/common/ui_helpers.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'success_dialog_model.dart';

class SuccessDialog extends StackedView<SuccessDialogModel> {
  final DialogRequest request;
  final Function(DialogResponse) completer;

  const SuccessDialog({
    Key? key,
    required this.request,
    required this.completer,
  }) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SuccessDialogModel viewModel,
    Widget? child,
  ) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      backgroundColor: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: CircleAvatar(
                  backgroundColor: Color(0xFFCEEACE),
                  radius: 30,
                  child: FaIcon(
                    FontAwesomeIcons.check,
                    color: Color.fromARGB(255, 33, 119, 35),
                  )),
            ),
            Text(
              request.title ?? 'Hello Stacked Dialog!!',
              style: GoogleFonts.hankenGrotesk(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
            if (request.description != null) ...[
              verticalSpaceTiny,
              Text(
                request.description!,
                style: GoogleFonts.hankenGrotesk(
                  wordSpacing: -1,
                  fontSize: 16,
                  color: lightTextColor,
                ),
                textAlign: TextAlign.center,
                maxLines: 3,
                softWrap: true,
              ),
            ],
            verticalSpaceMedium,
            GestureDetector(
              onTap: () => completer(DialogResponse(confirmed: true)),
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: mainBtnColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Login',
                  style: GoogleFonts.hankenGrotesk(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
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
  SuccessDialogModel viewModelBuilder(BuildContext context) =>
      SuccessDialogModel();
}
