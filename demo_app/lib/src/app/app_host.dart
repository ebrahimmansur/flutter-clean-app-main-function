import 'dart:async';

///Builds and runs the pre-configurations before the runapp() function.
abstract class IAppHostConfigurationBuilder {
  IAppHostConfigurationBuilder._();
  Future<void> run();
}
