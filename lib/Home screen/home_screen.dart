import 'package:evently/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: 
      AppBar(
        backgroundColor: Colors.pink,
        title: Text(AppLocalizations.of(context)!.language,style: TextStyle(color: Colors.white),),
      ),
    )
    ;
  }
}
