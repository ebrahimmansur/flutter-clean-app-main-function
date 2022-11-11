import 'dart:async';

abstract class IAppHostConfigurationBuilder {
  ///Builds and runs the pre-configurations before the runapp() function.
  IAppHostConfigurationBuilder._();
  Future<void> run();
}
