import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_routing_example/pages/initial_page.dart';
import 'package:flutter_routing_example/pages/second_page.dart';
import 'package:flutter_routing_example/pages/third_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: InitialPage, initial: true),
    CustomRoute(
      page: SecondPage,
      transitionsBuilder: TransitionsBuilders.zoomIn,
      durationInMilliseconds: 300,
    ),
    MaterialRoute(
      page: ThirdPage,
    )
  ],
)
class $AppRouter {}
