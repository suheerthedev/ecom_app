import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:stacked/stacked.dart';

class NotificationViewModel extends BaseViewModel {
  List<Map> notifications = [
    {"isHeader": true, "date": "Today"},
    {
      "isHeader": false,
      "title": "30% Special Discount!",
      "description": "Special promotion only valid today.",
      "icon": Iconsax.tag,
    },
    {"isHeader": true, "date": "Yesterday"},
    {
      "isHeader": false,
      "title": "Top Up E-wallet Successfully!",
      "description": "You have topped up your e-wallet.",
      "icon": Iconsax.wallet,
    },
    {
      "isHeader": false,
      "title": "New Service Available!",
      "description": "Now you can track orders in real-time.",
      "icon": Iconsax.location,
    },
    {"isHeader": true, "date": "Feb 7, 2025"},
    {
      "isHeader": false,
      "title": "Credit Card Connected!",
      "description": "Credit card has been linked.",
      "icon": Iconsax.card,
    },
    {
      "isHeader": false,
      "title": "Account Setup Successfully!",
      "description": "Your account has been created.",
      "icon": Iconsax.user,
    },
  ];

  // void fetchNotificationsFromApi(List<dynamic> apiData) {
  //   notifications.clear(); // Clear the current data
  //   for (var notification in apiData) {
  //     String date = notification[
  //         "date"]; // e.g., "Today", "Yesterday", or a specific date
  //     notifications.putIfAbsent(date, () => []).add({
  //       "title": notification["title"],
  //       "description": notification["description"],
  //       "icon": notification["icon"],
  //     });
  //   }
  // }
}

// "Today": [
//       {
//         "title": "30% Special Discount!",
//         "description": "Special promotion only valid today.",
//         "icon": "tag" // Icon identifier (e.g., 'tag' for a tag icon)
//       },
//     ],
//     "Yesterday": [
//       {
//         "title": "Top Up E-wallet Successfully!",
//         "description": "You have topped up your e-wallet.",
//         "icon": "wallet" // Icon identifier
//       },
//       {
//         "title": "New Service Available!",
//         "description": "Now you can track orders in real-time.",
//         "icon": "location" // Icon identifier
//       },
//     ],
//     "Feburary 2, 2025": [
//       {
//         "title": "Credit Card Connected!",
//         "description": "Credit card has been linked.",
//         "icon": "credit_card"
//       },
//       {
//         "title": "Account Setup Successfully!",
//         "description": "Your account has been created.",
//         "icon": "user"
//       },
//     ],
