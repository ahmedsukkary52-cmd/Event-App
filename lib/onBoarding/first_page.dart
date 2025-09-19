import 'package:evently/Utils/Style_app.dart';
import 'package:evently/Utils/color_app.dart';
import 'package:evently/Utils/image_assets.dart';
import 'package:evently/Utils/routes_app.dart';
import 'package:evently/l10n/app_localizations.dart';
import 'package:evently/providers/app_language_provider.dart';
import 'package:evently/providers/app_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toggle_switch/toggle_switch.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var languageProvider = Provider.of<LanguageProvider>(context);
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body:  Padding(
        padding: EdgeInsets.symmetric(vertical: height*.07 ,horizontal: width*.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(ImageAssets.logoOnboarding,width: width*.37,height: height*.05,),
            SizedBox(height: height*.02,),
            Image.asset(ImageAssets.onboardingImage1,width: width*.84,height: height*.39,),
            SizedBox(height: height*.02,),
            Text(AppLocalizations.of(context)!.personalisation,style: TextApp.bold20Blue,),
            SizedBox(height: height*.02,),
        SizedBox(
            width:width*.8,
            child: Text(AppLocalizations.of(context)!.choos
              ,style: Theme.of(context).textTheme.displayMedium,
              softWrap: true,
              overflow: TextOverflow.visible,)),
            SizedBox(height: height*.04,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(AppLocalizations.of(context)!.language,style: TextApp.bold20Blue,),
            ToggleSwitch(
              minHeight: height*.034,
              customWidths: [width*.1,width*.1,],
              cornerRadius: 40.0,
              customWidgets: [
                Image.asset(ImageAssets.english),
                Image.asset(ImageAssets.arabic),
              ],
              inactiveBgColor: ColorApp.transparentColor,
              borderColor: [ColorApp.primaryLight],
              borderWidth: 2.0,
              radiusStyle: true,
              activeBgColors: [
                [ColorApp.primaryLight],
                [ColorApp.primaryLight],
              ],
              initialLabelIndex: languageProvider.appLanguage == 'en' ? 0 : 1,
              onToggle: (index) {
                if (index == 0) {
                  languageProvider.changeLanguage('en');
                } else {
                  languageProvider.changeLanguage('ar');
                }
              },
            )
            ]
        ),
            SizedBox(height: height*.01,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppLocalizations.of(context)!.theme,style: TextApp.bold20Blue),
                ToggleSwitch(
                  minHeight: height*.034,
                  customWidths: [width*.1,width*.1,],
                  cornerRadius: 40.0,
                  customWidgets: [
                    Image.asset(ImageAssets.sun,color: themeProvider.appTheme == ThemeMode.light ? ColorApp.whiteBgColor:ColorApp.primaryLight),
                    Image.asset(ImageAssets.moon,color: themeProvider.appTheme == ThemeMode.light ? ColorApp.primaryLight:ColorApp.whiteBgColor),
                  ],
                  inactiveBgColor: ColorApp.transparentColor,
                  borderColor: [ColorApp.primaryLight],
                  borderWidth: 2.0,
                  radiusStyle: true,
                  activeBgColors: [
                    [ColorApp.primaryLight],
                    [ColorApp.primaryLight],
                  ],
                  initialLabelIndex: themeProvider.appTheme == ThemeMode.light ? 0 : 1,
                  onToggle: (index) {
                    if (index == 0) {
                      themeProvider.changeThemeMode(ThemeMode.light);
                    } else {
                      themeProvider.changeThemeMode(ThemeMode.dark);
                    }
                  },
                ),
          ],),
            Spacer(),
        ElevatedButton(onPressed: (){
          Navigator.of(context).pushReplacementNamed(AppRoutes.onboardingRouteName);
        },style: ElevatedButton.styleFrom(
            backgroundColor: ColorApp.primaryLight,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
            minimumSize: Size(double.infinity, 0),
            padding: EdgeInsets.symmetric(horizontal: width*.02,vertical: height*.016)
        ), child: Text("Let's Start",style: TextApp.bold20White,),),
    ]
      ),
      )
    );
  }
}
