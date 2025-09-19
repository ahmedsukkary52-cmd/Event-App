import 'package:evently/Utils/Style_app.dart';
import 'package:evently/Utils/color_app.dart';
import 'package:evently/Utils/image_assets.dart';
import 'package:evently/l10n/app_localizations.dart';
import 'package:evently/profile%20screen/Bottom%20Sheets/language_bottom_sheet.dart';
import 'package:evently/profile%20screen/Bottom%20Sheets/theme_bottom_sheet.dart';
import 'package:evently/providers/app_language_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var languageProvider = Provider.of<LanguageProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorApp.primaryLight,
        shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.only(bottomStart: Radius.circular(64))),
        toolbarHeight: height*.17,
        title:  Row(
          children: [
            Image.asset(
              ImageAssets.profileRoute,
              width: width*.288,height: height*.13,
              fit: BoxFit.cover,),
            SizedBox(width: width*.04,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: height*.01,
              children: [
              Text('John Safwat',style: TextApp.bold24White,),
          SizedBox(
              width:width*.46,
              child: Text('johnsafwat.route@gmail.com',style: TextApp.medium16White,
                softWrap: true,
                overflow: TextOverflow.visible,))
            ],)
          ],
        ),
      ),
      body:
      Padding(
        padding: EdgeInsets.symmetric(horizontal: width*.04,vertical: height*.03),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.headlineLarge,),
            SizedBox(height: height*.018,),
            InkWell(
              onTap: showLanguageBottomSheet,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: width*.04),
                width: double.infinity,
                height: height*.07,
                decoration: BoxDecoration(
                    border: BoxBorder.all(
                        color: ColorApp.primaryLight,
                        width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(languageProvider.appLanguage == 'en'?
                    AppLocalizations.of(context)!.english:
                  AppLocalizations.of(context)!.arabic
                    ,style: TextApp.bold20Blue,),
                    Icon(Icons.arrow_drop_down_rounded,size: 38,color: ColorApp.primaryLight,),
                ],),
              ),
            ),
            SizedBox(height: height*.04,),
            Text(AppLocalizations.of(context)!.theme,
              style: Theme.of(context).textTheme.headlineLarge,),
            SizedBox(height: height*.018,),
            InkWell(
              onTap: showThemeBottomSheet,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: width*.04),
                width: double.infinity,
                height: height*.07,
                decoration: BoxDecoration(
                    border: BoxBorder.all(
                        color: ColorApp.primaryLight,
                        width: 2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(AppLocalizations.of(context)!.dark,style: TextApp.bold20Blue,),
                    Icon(Icons.arrow_drop_down_rounded,size: 38,color: ColorApp.primaryLight,),
                ],),
              ),
            ),
            Spacer(),
            ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorApp.pinkColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: width*.04,vertical: height*.018)
                )
                ,child: Row(
                spacing: width*.03,
                  children: [
                    Icon(Icons.logout,color: ColorApp.whiteTextColor,size: 26,),
                    Text(AppLocalizations.of(context)!.logout,style: TextApp.regular20White,),
                  ],
                ),)
          ],
        ),
      ),
    );
  }
  void showLanguageBottomSheet() {
    showModalBottomSheet(context: context, builder: (context) => const LanguageBottomSheet(),);
  }
  void showThemeBottomSheet(){
    showModalBottomSheet(context: context, builder: (context) => const ThemeBottomSheet());
  }
}
