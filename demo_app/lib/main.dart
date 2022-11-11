import 'src/host/app_host.dart';

import 'src/demo_app.dart';

void main() async => await AppHost.lunch(
      app: const MyApp(),
      configurations: [],
    );
