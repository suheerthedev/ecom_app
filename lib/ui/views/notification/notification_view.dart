import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stacked/stacked.dart';

import 'notification_viewmodel.dart';

class NotificationView extends StackedView<NotificationViewModel> {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    NotificationViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: GoogleFonts.hankenGrotesk(
              wordSpacing: -4,
              letterSpacing: -1,
              color: mainTextColor,
              fontSize: 30,
              fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
        child: viewModel.notifications.isEmpty
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 20,
                    children: [
                      const Icon(
                        Iconsax.notification_copy,
                        size: 48,
                        color: iconColor,
                      ),
                      Text(
                        "You haven't gotten any notifications yet!",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.hankenGrotesk(
                            fontSize: 20,
                            color: mainTextColor,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "We’ll alert you when something cool happens.",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.hankenGrotesk(
                            fontSize: 20, color: lightTextColor),
                      ),
                    ],
                  ),
                ),
              )
            : ListView.builder(
                itemCount: viewModel.notifications.length,
                itemBuilder: (context, index) {
                  var item = viewModel.notifications[index];

                  if (item["isHeader"] == true) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            item["date"].toString(),
                            style: GoogleFonts.hankenGrotesk(
                                color: mainTextColor,
                                letterSpacing: -1,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: mainBackgroundColor,
                        radius: 18,
                        child: Icon(
                          item["icon"],
                          size: 20,
                          color: mainIconColor,
                        ),
                      ),
                      title: Text(
                        item["title"].toString(),
                        style: GoogleFonts.hankenGrotesk(
                            color: mainTextColor,
                            fontSize: 18,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        item["description"].toString(),
                        style: GoogleFonts.hankenGrotesk(
                            color: lightTextColor, letterSpacing: 0),
                      ),
                    );
                  }
                }),
      )),
    );
  }

  @override
  NotificationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NotificationViewModel();
}
