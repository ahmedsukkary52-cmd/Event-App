import 'package:evently/Utils/Style_app.dart';
import 'package:evently/Utils/color_app.dart';
import 'package:evently/l10n/app_localizations.dart';
import 'package:evently/providers/app_language_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class LanguageBottomSheet extends StatefulWidget {
  const LanguageBottomSheet({super.key});

  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var languageProvider = Provider.of<LanguageProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width*.05,vertical: height*.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: (){
              languageProvider.changeLanguage('en');
            },
            child: languageProvider.appLanguage == 'en' ?
                getSelectedItemWidget(language: AppLocalizations.of(context)!.english):
                getUnselectedItemWidget(language: AppLocalizations.of(context)!.english)
          ),
          SizedBox(height: height*.02,),
          InkWell(
            onTap: (){
              languageProvider.changeLanguage('ar');
            },
            child: languageProvider.appLanguage == 'ar' ?
                getSelectedItemWidget(language: AppLocalizations.of(context)!.arabic):
                getUnselectedItemWidget(language: AppLocalizations.of(context)!.arabic)
          ),
        ],
      ),
    );
  }

  Widget getSelectedItemWidget ({required String language}){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(language,
            style: TextApp.bold16Blue,),
        Icon(Icons.check_box_rounded,color: ColorApp.primaryLight,)
      ],
    );
  }
  Widget getUnselectedItemWidget ({required String language}){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(language,
          style: Theme.of(context).textTheme.displayMedium),
      ],
    );
  }
}
