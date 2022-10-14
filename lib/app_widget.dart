import 'package:dti_web/application/auth/auth_cubit.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            create: (context) => getIt<AuthCubit>(),
          ),
        ],
        child: MaterialApp.router(
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          title: 'DTI WEB',
          theme: ThemeData(
              textTheme: GoogleFonts.latoTextTheme(),
              primarySwatch: Colors.blue,
              inputDecorationTheme: const InputDecorationTheme(
                iconColor: AppColor.primaryColor,
                focusedErrorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: AppColor.primaryColor)),
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
