//Implementing a classic use case of page factory
import 'package:flutter/material.dart';
import 'bhoot_page2.dart';
import 'package:flutter_app/game_history.dart';
import 'package:flutter_app/myaccount.dart';
import 'package:flutter_app/playnow.dart';
import 'package:flutter_app/winning_history.dart';


abstract class AbstractPage extends StatefulWidget {
  void BuildPage();

  static AbstractPage CreatePage(PageNumber P_n) {
    switch (P_n) {
      case PageNumber.Playnow:
        return playnow();
      case PageNumber.GameHistory:
        return game_history();
      case PageNumber.WinningHistory:
        return winning_history();
      case PageNumber.MyAccount:
        return myaccount();
      default:
        return null;
    }
  }
/* @override
    Widget build({
        @required BuildContext context,
        @required Widget child,
        @required VoidCallback onPressed
    });*/
}

