import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing_example/routes/router.gr.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouter(),
      builder: ExtendedNavigator.builder<AppRouter>(
          router: AppRouter(),
          initialRoute: Routes.initialPage,
          builder: (ctx, extendedNav) => Theme(
            data: ThemeData.dark(),
            child: extendedNav,
          )),
    );
  }
}
