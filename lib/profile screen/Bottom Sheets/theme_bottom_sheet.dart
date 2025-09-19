import 'package:evently/Utils/Style_app.dart';
import 'package:evently/Utils/color_app.dart';
import 'package:evently/l10n/app_localizations.dart';
import 'package:evently/providers/app_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeBottomSheet extends StatefulWidget {
  const ThemeBottomSheet({super.key});

  @override
  State<ThemeBottomSheet> createState() => _ThemeBottomSheetState();
}

class _ThemeBottomSheetState extends State<ThemeBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width*.05,vertical: height*.03),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: (){
                themeProvider.changeThemeMode(ThemeMode.light);
              },
              child: themeProvider.appTheme ==  ThemeMode.light?
              getSelectedItemWidget(theme: AppLocalizations.of(context)!.light):
              getUnselectedItemWidget(theme: AppLocalizations.of(context)!.light)
          ),
          SizedBox(height: height*.02,),
          InkWell(
              onTap: (){
                themeProvider.changeThemeMode(ThemeMode.dark);
              },
              child: themeProvider.appTheme ==  ThemeMode.dark?
              getSelectedItemWidget(theme: AppLocalizations.of(context)!.dark):
              getUnselectedItemWidget(theme: AppLocalizations.of(context)!.dark)
          ),
        ],
      ),
    );
  }

  Widget getSelectedItemWidget ({required String theme}){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(theme,
          style: TextApp.bold16Blue,),
        Icon(Icons.check_box_rounded,color: ColorApp.primaryLight,)
      ],
    );
  }

  Widget getUnselectedItemWidget ({required String theme}){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(theme,
            style: Theme.of(context).textTheme.displayMedium),
      ],
    );
  }
}
