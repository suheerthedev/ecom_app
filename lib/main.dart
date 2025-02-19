import 'package:ecom_app/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:ecom_app/app/app.bottomsheets.dart';
import 'package:ecom_app/app/app.dialogs.dart';
import 'package:ecom_app/app/app.locator.dart';
import 'package:ecom_app/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.startupView,
      theme: ThemeData(
        scaffoldBackgroundColor: secondaryBackgroundColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: secondaryBackgroundColor,
        ),
        bottomAppBarTheme:
            const BottomAppBarTheme(color: secondaryBackgroundColor),
      ),
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      navigatorObservers: [
        StackedService.routeObserver,
      ],
    );
  }
}
