import 'package:auto_route/auto_route.dart';
import 'package:dti_web/application/app_list/app_list_cubit.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/core/widgets/application_card.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplicationCardPage extends StatefulWidget {
  static const String routeName = '/application-card';
  const ApplicationCardPage({super.key});

  @override
  State<ApplicationCardPage> createState() => _ApplicationCardPageState();
}

class _ApplicationCardPageState extends State<ApplicationCardPage> {
  @override
  void initState() {
    BlocProvider.of<AppListCubit>(context).getUserApplication();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: ScreenUtil().screenWidth / 3,
        child: BlocConsumer<AppListCubit, AppListState>(
          listener: (context, state) {
            // TODO: implement listener
            print(state);
          },
          builder: (context, state) {
            return state.maybeMap(
              orElse: () {
                return Container(
                  child: Text("TE"),
                );
              },
              onGetUsersApplication: (e) {
                return ListView.builder(
                  itemCount: e.apps.length,
                  itemBuilder: (context, index) {
                    return Container(
                        child: VisaApplicationCard(
                      visaApps: e.apps[index],
                      onCardClick: () {
                        context
                            .read<ApplicationCubit>()
                            .setupApplication(e.apps[index]);
                        AutoRouter.of(context)
                            .push(PersonalInformation1Route());
                      },
                    ));
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
