import 'package:fluro/fluro.dart';
import './handlers.dart';

class Routes {
  static String root = "/";
  static String user = "/users/:username";

  static void configureRoutes(Router router) {
    router.define(
      root,
      handler: rootHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      user,
      handler: userHandler,
      transitionType: TransitionType.fadeIn,
    );
  }
}
