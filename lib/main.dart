import 'package:evently/Home%20screen/home_screen.dart';
import 'package:evently/Utils/routes_app.dart';
import 'package:evently/Utils/theme_app.dart';
import 'package:evently/l10n/app_localizations.dart';
import 'package:evently/onBoarding/first_page.dart';
import 'package:evently/onBoarding/onBoarding.dart';
import 'package:evently/profile%20screen/profile_screen.dart';
import 'package:evently/providers/app_language_provider.dart';
import 'package:evently/providers/app_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main (){
  runApp(
      MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => LanguageProvider(),),
    ChangeNotifierProvider(create: (context) => ThemeProvider(),)
  ] ,child: EventApp()));
}
class EventApp extends StatelessWidget {
  const EventApp({super.key});

  @override
  Widget build(BuildContext context) {
    var languageProvider = Provider.of<LanguageProvider>(context);
    var themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.firstPageRouteName,
      routes: {
        AppRoutes.profileRouteName : (context) => ProfileScreen(),
        AppRoutes.firstPageRouteName: (context) => FirstPage(),
        AppRoutes.onboardingRouteName : (context) => OnboardingPages(),
        AppRoutes.homeRouteName : (context) => HomeScreen(),
      },
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeProvider.appTheme,
      locale: Locale(languageProvider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
