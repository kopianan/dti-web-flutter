import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dti_web/core/storage.dart';

class UserOnlyGuard extends AutoRouteGuard {
  final Storage storage = Storage();
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    log('USER ONLY GUARD', name: 'GUARD');
    final user = storage.getLocalUserData();
    //to enter the agent Dashboard,
    //user has have non null token, route to dashboard, and user is agent

    if (user!.adminOrAgent()) {
      resolver.next();
    } else {
      resolver.next(false);
    }
  }
}
