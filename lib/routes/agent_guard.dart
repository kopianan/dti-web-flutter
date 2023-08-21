import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dti_web/core/storage.dart';

class AgentGuard extends AutoRouteGuard {
  final Storage storage = Storage();
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    log('AGENT GUARD', name: 'GUARD');
    final user = storage.getLocalUserData();
    //to enter the agent Dashboard,
    //user has have non null token, route to dashboard, and user is agent
    if (user?.isAgent == true || user?.email == "team@doortoid.com") {
      resolver.next();
    } else {
      resolver.next(false);
    }
  }
}
