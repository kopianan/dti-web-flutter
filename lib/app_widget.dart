import 'package:dti_web/application/app_list/app_list_cubit.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/auth/auth_cubit.dart';
import 'package:dti_web/application/document/document_cubit.dart';
import 'package:dti_web/application/global/global_user_cubit.dart';
import 'package:dti_web/application/questionnaire_cubit.dart';
import 'package:dti_web/application/startup/startup_cubit.dart';
import 'package:dti_web/application/timer/timer_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/routes/agent_observer.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
// ignore: unused_import
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';

class AppWidget extends StatelessWidget {
  AppWidget({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1280, 720),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<StartupCubit>()..setupStartupData(),
          ),
          BlocProvider(
            create: (context) => getIt<UpdateApplicationCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<GlobalUserCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<DocumentCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<TimerCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<AuthCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<AppListCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<ApplicationCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<QuestionnaireCubit>(),
          ),
        ],
        child: MaterialApp.router(
          routerConfig: _appRouter.config(
            navigatorObservers: () => [AgentObserver()],
          ),
          supportedLocales: FormBuilderLocalizations.supportedLocales,
          localizationsDelegates: const [
            FormBuilderLocalizations.delegate,
          ],
          title: 'DoorToID',
          builder: EasyLoading.init(),
          theme: ThemeData(
              textTheme: GoogleFonts.latoTextTheme(),
              primaryColor: AppColor.primaryColor,
              inputDecorationTheme: const InputDecorationTheme(
                prefixIconColor: AppColor.primaryColor,
                focusColor: AppColor.primaryColor,
                labelStyle: TextStyle(
                  fontSize: 17,
                  color: AppColor.primaryColor,
                ),
                iconColor: AppColor.primaryColor,
                focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: AppColor.primaryColor),
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor.primaryColor)),
                border: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor.primaryColor)),
              )),
        ),
      ),
    );
  }
}
