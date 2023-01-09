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
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text("Application List"),
      ),
      body: SizedBox(
        width: ScreenUtil().screenWidth,
        child: BlocConsumer<AppListCubit, AppListState>(
          listener: (context, state) {},
          builder: (context, state) {
            return state.maybeMap(
              orElse: () {
                return Container();
              },
              onGetUsersApplication: (e) {
                return SingleChildScrollView(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Wrap(
                        verticalDirection: VerticalDirection.down,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        alignment: WrapAlignment.start,
                        children: e.apps
                            .map((element) => Container(
                                  width: 500,
                                  child: VisaApplicationCard(
                                    visaApps: element,
                                    onCardClick: () {
                                      // context
                                      //     .read<ApplicationCubit>()
                                      //     .setupApplication(element);
                                      AutoRouter.of(context).push(
                                          PersonalInformation1Route(
                                              firebaseDocId:
                                                  element.firebaseDocId!));
                                    },
                                  ),
                                ))
                            .toList()),
                  ),
                );

                // GridView.builder(
                //   padding: const EdgeInsets.symmetric(horizontal: 30),
                //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 2,
                //     mainAxisSpacing: 10.h,
                //     crossAxisSpacing: 10.h,
                //     childAspectRatio: 2
                //   ),
                //   itemCount: e.apps.length,
                //   itemBuilder: (context, index) {
                //     return VisaApplicationCard(
                //       visaApps: e.apps[index],
                //       onCardClick: () {
                //         // context
                //         //     .read<ApplicationCubit>()
                //         //     .setupApplication(e.apps[index]);
                //         AutoRouter.of(context).push(PersonalInformation1Route(
                //             firebaseDocId: e.apps[index].firebaseDocId!));
                //       },
                //     );
                //   },
                // );
              },
            );
          },
        ),
      ),
    );
  }
}
