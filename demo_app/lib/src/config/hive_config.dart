import 'dart:async';

import 'package:demo_app/src/host/app_host.dart';
import 'package:demo_app/src/models/user_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveConfig implements IAppHostConfigurationBuilder {
  @override
  FutureOr<void> run() async {
    await Hive.initFlutter();
    Hive.registerAdapter(UserModelAdapter());
  }
}
