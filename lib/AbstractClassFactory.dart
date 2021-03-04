//Implementing a classic use case of page factory
import 'package:flutter/material.dart';
import 'LandingPage.dart';
import 'package:flutter_app/game_history.dart';
import 'package:flutter_app/myaccount.dart';
import 'package:flutter_app/playnow.dart';
import 'package:flutter_app/winning_history.dart';
import 'Played_History.dart';


enum PageNumber {

  Playnow,
  GameHistory,
  WinningHistory,
  MyAccount,
  played_history

}
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
        AbstractPage page4 = myaccount();
        page4.BuildPage();
        return page4;
      case PageNumber.played_history:
        return Played_History();
      default:
        return null;
    }
  }


}

