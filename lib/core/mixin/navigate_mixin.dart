import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/global/global_user_cubit.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:flutter/material.dart';

mixin NavigateMixin {
  void backToDashboard(BuildContext context) {
    final user = getIt<GlobalUserCubit>().state.user;

    if (user.adminOrAgent()) {
      AutoRouter.of(context).replaceAll([const CDashboardRoute()]);
    } else {
      AutoRouter.of(context).replaceAll([const DashboardRoute()]);
    }
  }
}
