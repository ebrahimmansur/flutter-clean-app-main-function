import 'dart:async';

import 'package:demo_app/src/host/app_host.dart';
import 'package:flutter/material.dart';

class FlutterBindingConfig implements IAppHostConfigurationBuilder {
  @override
  FutureOr<void> run() => WidgetsFlutterBinding.ensureInitialized();
}
