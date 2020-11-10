// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../pages/initial_page.dart';
import '../pages/second_page.dart';
import '../pages/third_page.dart';

class Routes {
  static const String initialPage = '/';
  static const String secondPage = '/second-page';
  static const String thirdPage = '/third-page';
  static const all = <String>{
    initialPage,
    secondPage,
    thirdPage,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.initialPage, page: InitialPage),
    RouteDef(Routes.secondPage, page: SecondPage),
    RouteDef(Routes.thirdPage, page: ThirdPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    InitialPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => InitialPage(),
        settings: data,
      );
    },
    SecondPage: (data) {
      final args = data.getArgs<SecondPageArguments>(nullOk: false);
      return PageRouteBuilder<dynamic>(
        pageBuilder: (context, animation, secondaryAnimation) => SecondPage(
          key: args.key,
          userId: args.userId,
        ),
        settings: data,
        transitionsBuilder: TransitionsBuilders.zoomIn,
        transitionDuration: const Duration(milliseconds: 300),
      );
    },
    ThirdPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ThirdPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// SecondPage arguments holder class
class SecondPageArguments {
  final Key key;
  final String userId;
  SecondPageArguments({this.key, @required this.userId});
}
