import 'package:evently/Utils/Style_app.dart';
import 'package:evently/Utils/color_app.dart';
import 'package:evently/Utils/image_assets.dart';
import 'package:evently/Utils/routes_app.dart';
import 'package:evently/l10n/app_localizations.dart';
import 'package:evently/providers/app_language_provider.dart';
import 'package:evently/providers/app_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';

class OnboardingPages extends StatefulWidget {
  @override
  State<OnboardingPages> createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var languageProvider = Provider.of<LanguageProvider>(context);
    var themeProvider = Provider.of<ThemeProvider>(context);
    final List<PageViewModel> pages = [
      PageViewModel(
        decoration: PageDecoration(
          imageFlex: 2,
          footerFlex: 0,
          fullScreen: true,
          imagePadding: EdgeInsets.zero,
          bodyPadding: EdgeInsets.zero,
          contentMargin: EdgeInsets.zero,
          footerPadding: EdgeInsets.zero,
          titlePadding: EdgeInsets.zero,
          bodyFlex: 1,
        ),
        image: Padding(
          padding: EdgeInsets.symmetric(vertical: height * .07),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                ImageAssets.logoOnboarding,
                width: width * .37,
                height: height * .05,
              ),
              SizedBox(height: height * .02),
              Image.asset(
                themeProvider.appTheme == ThemeMode.light
                    ? ImageAssets.onboardingImage2
                    : ImageAssets.onboarding2Dark,
                width: width * .84,
                height: height * .39,
              ),
              SizedBox(height: height * .02),
            ],
          ),
        ),
        titleWidget: SizedBox.shrink(),
        bodyWidget: Padding(
          padding: EdgeInsets.only(left: width * .04, right: width * .04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                AppLocalizations.of(context)!.find,
                style: TextApp.bold20Blue,
              ),
              SizedBox(height: height * .04),
              SizedBox(
                width: width * .8,
                child: Text(
                  AppLocalizations.of(context)!.dive,
                  style: Theme.of(context).textTheme.bodySmall,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
              SizedBox(height: height * .02),
            ],
          ),
        ),
      ),
      PageViewModel(
        decoration: PageDecoration(
          imageFlex: 2,
          footerFlex: 0,
          fullScreen: true,
          imagePadding: EdgeInsets.zero,
          bodyPadding: EdgeInsets.zero,
          contentMargin: EdgeInsets.zero,
          footerPadding: EdgeInsets.zero,
          titlePadding: EdgeInsets.zero,
          bodyFlex: 1,
        ),
        image: Padding(
          padding: EdgeInsets.symmetric(vertical: height * .07),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                ImageAssets.logoOnboarding,
                width: width * .37,
                height: height * .05,
              ),
              SizedBox(height: height * .02),
              Image.asset(
                themeProvider.appTheme == ThemeMode.light
                    ? ImageAssets.onboardingImage3
                    : ImageAssets.onboarding3Dark,
                width: width * .84,
                height: height * .39,
              ),
              SizedBox(height: height * .02),
            ],
          ),
        ),
        titleWidget: SizedBox.shrink(),
        bodyWidget: Padding(
          padding: EdgeInsets.only(left: width * .04, right: width * .04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                AppLocalizations.of(context)!.effortless,
                style: TextApp.bold20Blue,
              ),
              SizedBox(height: height * .04),
              SizedBox(
                width: width * .8,
                child: Text(
                  AppLocalizations.of(context)!.take,
                  style: Theme.of(context).textTheme.bodySmall,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
              SizedBox(height: height * .02),
            ],
          ),
        ),
      ),
      PageViewModel(
        decoration: PageDecoration(
          imageFlex: 2,
          footerFlex: 0,
          fullScreen: true,
          imagePadding: EdgeInsets.zero,
          bodyPadding: EdgeInsets.zero,
          contentMargin: EdgeInsets.zero,
          footerPadding: EdgeInsets.zero,
          titlePadding: EdgeInsets.zero,
          bodyFlex: 1,
        ),
        image: Padding(
          padding: EdgeInsets.symmetric(vertical: height * .07),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                ImageAssets.logoOnboarding,
                width: width * .37,
                height: height * .05,
              ),
              SizedBox(height: height * .02),
              Image.asset(
                themeProvider.appTheme == ThemeMode.light
                    ? ImageAssets.onboardingImage4
                    : ImageAssets.onboarding4Dark,
                width: width * .84,
                height: height * .39,
              ),
              SizedBox(height: height * .02),
            ],
          ),
        ),
        titleWidget: SizedBox.shrink(),
        bodyWidget: Padding(
          padding: EdgeInsets.only(left: width * .04, right: width * .04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                width: width * .80,
                child: Text(
                  AppLocalizations.of(context)!.connect,
                  style: TextApp.bold20Blue,
                ),
              ),
              SizedBox(height: height * .04),
              SizedBox(
                width: width * .8,
                child: Text(
                  AppLocalizations.of(context)!.make,
                  style: Theme.of(context).textTheme.bodySmall,
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
              SizedBox(height: height * .02),
            ],
          ),
        ),
      ),
    ];
    return IntroductionScreen(
      rtl: languageProvider.appLanguage == 'ar' ? true: false,
      pages: pages,
      showNextButton: true,
      showBackButton: true,
      showDoneButton: true,
      nextFlex: 0,
      skipOrBackFlex: 0,
      showFirstBackButton: true,
      dotsDecorator: DotsDecorator(
        size: Size.square(height * .010),
        activeSize: Size(width * .04, height * .010),
        activeColor: ColorApp.primaryLight,
        color: Theme.of(context).canvasColor,
        spacing: EdgeInsets.symmetric(horizontal: width * .01),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
      next: Image.asset(
        themeProvider.appTheme == ThemeMode.light
            ? ImageAssets.arrowRight
            : ImageAssets.arrowRightDark,
      ),
      back: currentPage == 0
          ? Image.asset(
              ImageAssets.arrowRight,
              color: ColorApp.transparentColor,
            )
          : Image.asset(
              themeProvider.appTheme == ThemeMode.light
                  ? ImageAssets.arrowLeft
                  : ImageAssets.arrowLeftDark,
            ),
      done: Image.asset(
        themeProvider.appTheme == ThemeMode.light
            ? ImageAssets.arrowRight
            : ImageAssets.arrowRightDark,
      ),
      onChange: (index) {
        setState(() {
          currentPage = index;
        });
      },
      onDone: () {
        Navigator.of(context).pushReplacementNamed(AppRoutes.profileRouteName);
      },
    );
  }
}
