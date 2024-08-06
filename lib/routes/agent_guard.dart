import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/account_util.dart';

class AgentGuard extends AutoRouteGuard {
  final Storage storage = Storage();
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    log('AGENT GUARD', name: 'GUARD');
    final user = storage.getLocalUserData();
    //to enter the agent Dashboard,
    //user has have non null token, route to dashboard, and user is agent
    if (user?.isAgent == true ||
        user?.email?.contains("@doortoid.com") == true) {
      resolver.next();
    } else {
      resolver.next(false);
    }
  }
}

class PlatformGuard extends AutoRouteGuard {
  final Storage storage = Storage();
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final isFromPhone = AccountUtil().isFromPhone();
    if (isFromPhone != null) {
      router.replaceAll([const PlatformRoute()]);
    } else {
      resolver.next();
    }
  }
}
