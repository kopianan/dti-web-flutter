import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/app_list/app_list_cubit.dart';
import 'package:dti_web/application/global/global_user_cubit.dart';
import 'package:dti_web/application/other/other_cubit.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/corporate/widgets/admin_dashboard_widget.dart';
import 'package:dti_web/presentation/corporate/widgets/agent_dashboard_widget.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class CDashboardPage extends StatefulWidget {
  const CDashboardPage({super.key});

  @override
  State<CDashboardPage> createState() => _CDashboardPageState();
}

class _CDashboardPageState extends State<CDashboardPage> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AppListCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<OtherCubit>()
            ..getLocation()
            ..getDocumentsData(),
        )
      ],
      child: BlocBuilder<OtherCubit, OtherState>(
        builder: (context, state) {
          return BlocConsumer<GlobalUserCubit, GlobalUserState>(
            listener: (context, state) {
              if (state.logOut == true) {
                AutoRouter.of(context).replaceAll([const SignInRoute()]);
              }
            },
            builder: (context, state) {
              if (state.user.isAgent) {
                return const AgentDashboardWidget();
              } else {
                return const AdminDashboardWidget();
              }
            },
          );
        },
      ),
    );
  }
}
