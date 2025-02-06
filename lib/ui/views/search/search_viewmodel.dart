import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SearchViewModel extends BaseViewModel {
  final NavigationService navigationService = NavigationService();

  List recentSearches = [
    "Jeans",
    "Casual Clothes",
    "Hoodie",
    "Nike shoes black",
    "V-neck shirt",
    "Winter clothes"
  ];
}
