import 'src/config/flutter_binding_config.dart';
import 'src/config/hive_config.dart';
import 'src/host/app_host.dart';

import 'src/demo_app.dart';

void main() async => await AppHost.lunch(
      app: const MyApp(),
      configurations: [
        FlutterBindingConfig(),
        HiveConfig(),
      ],
    );
