import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing_example/routes/router.gr.dart';

class InitialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Initial Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                onPressed: () => navigateToSecondPage(context),
                child: Text('Second Page')),
            SizedBox(height: 16),
            RaisedButton(
                onPressed: () => navigateToThirdPage(context),
                child: Text('Third page')),
          ],
        ),
      ),
    );
  }

  void navigateToSecondPage(BuildContext context) {
    ExtendedNavigator.of(context)
        .push(Routes.secondPage, arguments: SecondPageArguments(userId: '321'));
  }

  void navigateToThirdPage(BuildContext context) {
    ExtendedNavigator.of(context).push(Routes.thirdPage);
  }
}
