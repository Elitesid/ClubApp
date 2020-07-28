import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:sidebar_animation/pages/feedbackpage.dart';
import 'package:sidebar_animation/pages/joinuspage.dart';
import '../pages/myaccountspage.dart';
import '../pages/myorderspage.dart';
import '../pages/feedbackpage.dart';

import '../pages/homepage.dart';

enum NavigationEvents {
  HomePageClickedEvent,
  MyAccountClickedEvent,
  MyOrdersClickedEvent,
  FeedbackClickedEvent,
  JoinUsClickedEvent,
}

abstract class NavigationStates {}

class NavigationBloc extends Bloc<NavigationEvents, NavigationStates> {
  @override
  NavigationStates get initialState => HomePage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    switch (event) {
      case NavigationEvents.HomePageClickedEvent:
        yield HomePage();
        break;
      case NavigationEvents.MyAccountClickedEvent:
        yield MyAccountsPage();
        break;
      case NavigationEvents.MyOrdersClickedEvent:
        yield MyOrdersPage();
        break;
      case NavigationEvents.FeedbackClickedEvent:
        yield FeedbackPage();
        break;
      case NavigationEvents.JoinUsClickedEvent:
        yield JoinUsPage();
        break;
    }
  }
}
