import 'dart:async';
import 'package:flutter/cupertino.dart';

///Builds and lunches the Application.
abstract class AppLuncher {
  const AppLuncher._();

  static Future<void> run({
    required Widget app,
    List<IAppPreConfigurationRunner> runners = const [],
  }) async {
    await Future.forEach<IAppPreConfigurationRunner>(
        runners, (element) async => await element.run());
    runApp(app);
  }
}

///Runs the pre-configurations before the runapp() function.
abstract class IAppPreConfigurationRunner {
  const IAppPreConfigurationRunner._();
  FutureOr run();
}
