import 'package:auto_route/auto_route.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:dti_web/presentation/auth/pages/sign_up_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("TEST")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).push(SignInRoute());
            },
            child: Text("GO TO LOGIN PAGE"),
          ),
          ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).push(ResetRoute());
            },
            child: Text("GO TO Reset"),
          ),
          ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).push(CheckEmailRoute());
            },
            child: Text("GO TO Check Email"),
          ),
          ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).push(CreateNewPasswordRoute());
            },
            child: Text("GO TO Create New Password"),
          ),
          ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).push(OTPRoute());
            },
            child: Text("GO TO Otp Page"),
          ),
          ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).push(LandingRoute());
            },
            child: Text("GO TO Landing"),
          ),
          ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).push(DashboardRoute());
            },
            child: Text("GO TO Dashboard"),
          ),
          ElevatedButton(
            onPressed: () {
              AutoRouter.of(context).push(UploadDocumentRoute());
            },
            child: Text("GO TO UpLOAD DOCUMENT"),
          ),
        ],
      )),
    );
  }
}
