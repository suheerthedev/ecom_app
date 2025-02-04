import 'package:stacked/stacked.dart';

class NotificationViewModel extends BaseViewModel {
  Map<String, List<Map<String, String>>> notifications = {
    "Today": [
      {
        "title": "30% Special Discount!",
        "description": "Special promotion only valid today.",
        "icon": "tag" // Icon identifier (e.g., 'tag' for a tag icon)
      },
    ],
    "Yesterday": [
      {
        "title": "Top Up E-wallet Successfully!",
        "description": "You have topped up your e-wallet.",
        "icon": "wallet" // Icon identifier
      },
      {
        "title": "New Service Available!",
        "description": "Now you can track orders in real-time.",
        "icon": "location" // Icon identifier
      },
    ],
    "Feburary 2, 2025": [
      {
        "title": "Credit Card Connected!",
        "description": "Credit card has been linked.",
        "icon": "credit_card"
      },
      {
        "title": "Account Setup Successfully!",
        "description": "Your account has been created.",
        "icon": "user"
      },
    ],
  };
}
