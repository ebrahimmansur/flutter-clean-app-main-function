import 'dart:async';

import 'package:flutter/cupertino.dart';

///Builds The Application
abstract class AppHost {
  AppHost._();

  static Future<void> lunch({
    required Widget app,
    required List<IAppHostConfigurationBuilder> configurations,
  }) async {
    final appBuilder = _AppBuilder.instance();
    appBuilder.addApp(app);
    for (var config in configurations) {
      appBuilder.addConfig(config);
    }

    await appBuilder.build();
  }
}

///Builds and runs the pre-configurations before the runapp() function.
abstract class IAppHostConfigurationBuilder {
  IAppHostConfigurationBuilder._();
  Future<void> run();
}

class _AppBuilder {
  Widget? _app;
  final List<IAppHostConfigurationBuilder> _configurations = [];
  static _AppBuilder? _instance;
  _AppBuilder._();

  factory _AppBuilder.instance() {
    if (_instance == null) {
      _instance = _AppBuilder._();
      return _instance!;
    }

    return _instance!;
  }

  void addApp(Widget app) => _app = app;
  void addConfig(IAppHostConfigurationBuilder config) =>
      _configurations.add(config);

  Future<void> build() async {
    await Future.forEach<IAppHostConfigurationBuilder>(_configurations,
        (item) async {
      await item.run();
    });

    runApp(_app!);
  }
}
