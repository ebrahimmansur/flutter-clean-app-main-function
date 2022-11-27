import 'dart:async';

import 'package:demo_app/src/host/app_host.dart';
import 'package:flutter/material.dart';

class FlutterBindingConfigRunner implements IAppPreConfigurationRunner {
  @override
  FutureOr run() => WidgetsFlutterBinding.ensureInitialized();
}
