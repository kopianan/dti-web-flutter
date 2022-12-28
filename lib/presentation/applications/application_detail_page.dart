import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/document/document_cubit.dart';
import 'package:dti_web/application/update_application/update_application_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/converter.dart';
import 'package:dti_web/utils/date_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';

class ApplicationDetailPage extends StatefulWidget {
  static const String routeName = '/application-detail';
  const ApplicationDetailPage({
    super.key,
    required this.firebaseDocId,
  });
  final String firebaseDocId;

  @override
  State<ApplicationDetailPage> createState() => _ApplicationDetailPageState();
}

class _ApplicationDetailPageState extends State<ApplicationDetailPage> {
  @override
  void initState() {
    // TODO: implement initState
    log("TODO");

    super.initState();
  }

  bool onCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<UpdateApplicationCubit>()
          ..getUserApplicationWithImages(widget.firebaseDocId),
        child: BlocListener<UpdateApplicationCubit, UpdateApplicationState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              onLoading: (e) async {
                await EasyLoading.show(
                  maskType: EasyLoadingMaskType.black,
                );
              },
              onGetSingleApplicationWithImage: (e) {
                getIt<DocumentCubit>()
                    .setupApplication(e.singleResponse.visaApplicationModel!);
              },
            );
          },
          child: BlocBuilder<UpdateApplicationCubit, UpdateApplicationState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () {
                  return Container();
                },
                onError: (e) {
                  return Center(
                    child: Text("Something wrong"),
                  );
                },
                onLoading: (e) {
                  return SizedBox(
                    width: double.infinity,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          CircularProgressIndicator(),
                          20.verticalSpace,
                          Text(
                            "Getting Data . . .",
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          )
                        ]),
                  );
                },
                onGetSingleApplicationWithImage: (e) {
                  return SuccessBody(
                    imagesUrl: e.singleResponse.documentUserApplicationUrl,
                    visa: e.singleResponse.visaApplicationModel!,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

TableRow get vertDistance =>
    TableRow(children: [10.verticalSpace, 10.verticalSpace]);

class SuccessBody extends StatefulWidget {
  const SuccessBody({super.key, required this.visa, required this.imagesUrl});
  final VisaApplicationModel visa;
  final List<dynamic>? imagesUrl;

  @override
  State<SuccessBody> createState() => _SuccessBodyState();
}

class _SuccessBodyState extends State<SuccessBody> {
  bool onCheck = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Visa Detail Summary',
              style: TextStyle(
                  fontSize: 30.sp,
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold),
            ),
            30.verticalSpace,
            const SubtitleWidget(label: "VISIT VISA TOUR"),
            20.verticalSpace,
            Row(
              children: [
                DetailItemWidget(
                  label: "Estimated",
                  value: Converter.convertStringToIDR(widget.visa.price ?? 0),
                ),
                100.horizontalSpace,
                DetailItemWidget(
                  label: "Guarantor",
                  value: widget.visa.guarantorDTI!
                      ? "Door To Indonesia"
                      : "Non Door To Indonesia",
                )
              ],
            ),
            20.verticalSpace,
            const SubtitleWidget(label: " VISIT INFORMATION"),
            20.verticalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailItemWidget(
                  label: "Type of Visa",
                  value: widget.visa.entry!,
                ),
                10.verticalSpace,
                DetailItemWidget(
                  label: "Length of Stay in Indonesia",
                  value: widget.visa.entry == "Single Entry Visa"
                      ? "60 Days after entering Indonesia"
                      : '${widget.visa.multiVisaDuration!} after entering Indonesia',
                ),
                10.verticalSpace,
                DetailItemWidget(
                  label: "Visa must used by",
                  value: widget.visa.entry == "Single Entry Visa"
                      ? "90 Days after issuance date"
                      : '${widget.visa.multiVisaDuration!} after issuance date',
                ),
              ],
            ),
            20.verticalSpace,
            const SubtitleWidget(label: "VISIT INFORMATION"),
            20.verticalSpace,
            //VISIT INFORMATION 2
            Table(
              defaultColumnWidth: FixedColumnWidth(400.w),
              children: [
                TableRow(children: [
                  DetailItemWidget(
                    label: "First Name",
                    value: widget.visa.firstName!,
                  ),
                  DetailItemWidget(
                    label: "Last Name",
                    value: widget.visa.lastName!,
                  ),
                ]),
                vertDistance,
                TableRow(children: [
                  DetailItemWidget(
                    label: "Gender",
                    value: widget.visa.gender!.capitalize(),
                  ),
                  DetailItemWidget(
                    label: "Nationality",
                    value: widget.visa.nationality!.capitalize(),
                  ),
                ]),
                vertDistance,
                TableRow(children: [
                  DetailItemWidget(
                    label: "Relationship Status",
                    value: widget.visa.status!.capitalize(),
                  ),
                  DetailItemWidget(
                    label: "Mobile Number",
                    value:
                        "${widget.visa.mobileDialCode}-${widget.visa.mobileNumber} ",
                  ),
                ]),
                vertDistance,
                TableRow(children: [
                  DetailItemWidget(
                    label: "Place Of Birth",
                    value: widget.visa.placeOfBirth!,
                  ),
                  DetailItemWidget(
                    label: "Date of Birth",
                    value: DateConverter.convertDateDefault(
                        widget.visa.dateOfBirth!),
                  ),
                ]),
                vertDistance,
                TableRow(children: [
                  DetailItemWidget(
                    label: "Deported",
                    value: widget.visa.deportedFlag == true ? "YES" : "NO",
                  ),
                  DetailItemWidget(
                    label: "Overstayed",
                    value: widget.visa.overstayedFlag == true ? "YES" : "NO",
                  ),
                ]),
              ],
            ),
            20.verticalSpace,
            //    PASSPORT INFORMATION
            const SubtitleWidget(label: "PASSPORT INFORMATION"),
            20.verticalSpace,
            Table(
              defaultColumnWidth: FixedColumnWidth(400.w),
              children: [
                TableRow(children: [
                  DetailItemWidget(
                    label: "Address",
                    value: widget.visa.address!,
                  ),
                  DetailItemWidget(
                    label: "Province",
                    value: widget.visa.province!,
                  ),
                ]),
                vertDistance,
                TableRow(children: [
                  DetailItemWidget(
                    label: "City",
                    value: widget.visa.city!,
                  ),
                  DetailItemWidget(
                    label: "District",
                    value: widget.visa.district!,
                  ),
                ]),
              ],
            ),
            20.verticalSpace,

            //    SUPPORTING DOCUMENT
            const SubtitleWidget(label: "SUPPORTING DOCUMENT  "),
            20.verticalSpace,
            BlocBuilder<DocumentCubit, DocumentState>(
              bloc: getIt<DocumentCubit>(),
              builder: (context, state) {
                return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: state.docs!.map((e) {
                      return InkWell(
                          onTap: () {
                            var data = e.imageList!;
                            List<String>? filtered = [];
                            data.removeWhere((element) => element == null);
                            if (data.isNotEmpty) {
                              widget.imagesUrl!.forEach(
                                (element) {
                                  final data = element as Map<String, dynamic>;
                                  log(e.toJson().toString());
                                  if (data.containsKey(e.id)) {
                                    //check if id is same then get the data
                                    filtered.add(data[e.id!.trim()]);
                                  }
                                },
                              );

                              //check if image is pdf
                              if (e.attachment != null &&
                                  e.attachment!.contains('.doc')) {
                                // file is document, not picture
                                AutoRouter.of(context).push(DTIPdfViewerRoute(
                                    imageUrl: filtered.single,
                                    isNetwork: true));
                              } else {
                                AutoRouter.of(context).push(PhotoViewRoute(
                                    images: filtered, isNetwork: true));
                              }

                              // showDialog(
                              //     context: context,
                              //     builder: (context) {
                              //       return Container(
                              //         color: Colors.green,
                              //       );
                              //     });
                            }
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            child: Text(
                              e.header!,
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  color: AppColor.primaryColor),
                            ),
                          ));
                    }).toList());
              },
            ),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                30.verticalSpace,
                Text(
                  "Reference Number",
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                10.verticalSpace,
                Text(
                  widget.visa.applicationID ?? "",
                  style: TextStyle(
                    fontSize: 18.sp,
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            20.verticalSpace,
            Visibility(
              visible: widget.visa.status?.toLowerCase() == 'draft',
              child: _termAndCondition(),
            ),
            // REFERENCE NUMBER

            20.verticalSpace,
            Visibility(
                visible: widget.visa.status!.toLowerCase() == 'completed',
                child: Container(
                  width: double.infinity,
                  height: 50,
                  child: PrimaryButton(
                    onClick: () {
                      try {
                        final data = widget.imagesUrl!.firstWhere(
                            (dynamic element) => (element
                                    as Map<String, dynamic>)
                                .containsKey('EVISA')) as Map<String, dynamic>;
                        if (data['EVISA'].toString().contains('.pdf')) {
                          AutoRouter.of(context).push(DTIPdfViewerRoute(
                              imageUrl: data['EVISA'].toString(),
                              isNetwork: true));
                        } else {
                          AutoRouter.of(context).push(PhotoViewRoute(
                              images: [data['EVISA'].toString()],
                              isNetwork: true));
                        }
                      } catch (e) {}
                    },
                    label: "Download EVISA",
                    labelStyle: TextStyle(fontSize: 17.sp),
                  ),
                )),
            Visibility(
              visible: widget.visa.status?.toLowerCase() == 'pending payment',
              child: Column(
                children: [
                  const SubtitleWidget(label: "SUMMARY"),
                  40.verticalSpace,
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "Total Price (IDR)",
                            style: TextStyle(
                                fontSize: 25.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                          child: Container(
                              alignment: Alignment.topRight,
                              child: Text(
                                Converter.convertStringToIDR(
                                    widget.visa.price ?? 0),
                                style: TextStyle(
                                    fontSize: 25.sp,
                                    fontWeight: FontWeight.bold),
                              ))),
                    ],
                  ),
                  40.verticalSpace,
                  Container(
                    alignment: Alignment.bottomRight,
                    child: PrimaryButton(
                      onClick: () {
                        AutoRouter.of(context)
                            .push(PaymentRoute(visa: widget.visa));
                      },
                      width: 300,
                      label: "Pay",
                      labelStyle: TextStyle(fontSize: 20.sp),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      height: 60,
                    ),
                  ),
                ],
              ),
            ),

            50.verticalSpace,
            Visibility(
              visible: widget.visa.status!.toLowerCase() == 'paid' ||
                  widget.visa.status!.toLowerCase() == 'completed' ||
                  widget.visa.status!.toLowerCase() == 'submitted', 
              child: Container(
                width: double.infinity,
                height: 50,
                child: PrimaryButton(
                  onClick: () {
                    AutoRouter.of(context).pushAndPopUntil(DashboardRoute(),
                        predicate: ModalRoute.withName(DashboardRoute.name));
                  },
                  label: "Back to dashboard",
                  labelStyle: TextStyle(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            50.verticalSpace,
          ],
        ),
      ),
    );
  }

  Column _termAndCondition() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Before you confirm, you understand that :",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp),
            ),
            20.verticalSpace,
            Text(
              "(a) You attest that you have read Moral Character Requirments carefully and state that your attestation here is true and correct, and ",
              style: TextStyle(color: Colors.black, fontSize: 16.sp),
            ),
            8.verticalSpace,
            Text(
              "(b) You are understand that, while sponsored, employed or volunteering in any position that requires Door To Indonesia background screening as a condition of guaranteed",
              style: TextStyle(color: Colors.black, fontSize: 16.sp),
            ),
          ],
        ),
        10.verticalSpace,
        CheckboxListTile(
          contentPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.leading,
          value: onCheck,
          title: Text("I Agree to the Term Of Use, and Privacy Policy."),
          onChanged: (value) {
            setState(() {
              onCheck = value ?? false;
            });
          },
        ),
        20.verticalSpace,
        BlocProvider(
          create: (context) => getIt<UpdateApplicationCubit>(),
          child: BlocConsumer<UpdateApplicationCubit, UpdateApplicationState>(
            listener: (context, updateState) {
              updateState.maybeMap(
                  orElse: () {},
                  onLoading: (e) {},
                  onSubmitApplication: (e) {
                    AwesomeDialog(
                      context: context,
                      width: ScreenUtil().screenWidth / 4,
                      title: "SUBMIT DOCUMENT",
                      body: const Center(
                        child: Text(
                          "Document Has Been Submitted",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      btnOkText: "Continue",
                      btnOkOnPress: () {
                        AutoRouter.of(context).pushAndPopUntil(
                          DashboardRoute(),
                          predicate: (route) => false,
                        );
                      },
                    ).show();
                  });
            },
            builder: (context, updateState) {
              return updateState.maybeMap(orElse: () {
                return PrimaryButton(
                  bgColor: onCheck ? AppColor.primaryColor : Colors.grey,
                  onClick: () {
                    if (onCheck) {
                      context
                          .read<UpdateApplicationCubit>()
                          .submitVisaApps(widget.visa.firebaseDocId!);
                    }
                  },
                  width: 300,
                  label: "CONFIRM",
                  labelStyle: TextStyle(fontSize: 20.sp),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 60,
                );
              }, onLoading: (e) {
                return PrimaryButton(
                  onClick: () {},
                  width: 300,
                  label: "Loading . . . ",
                  labelStyle: TextStyle(fontSize: 20.sp),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 60,
                );
              });
            },
          ),
        ),
      ],
    );
  }
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}

class DetailItemWidget extends StatelessWidget {
  const DetailItemWidget({Key? key, required this.label, required this.value})
      : super(key: key);
  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
              color: AppColor.primaryColor,
              fontStyle: FontStyle.italic,
              fontSize: 15),
        ),
        2.verticalSpace,
        Text(
          value,
          style: TextStyle(
              color: AppColor.primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ],
    );
  }
}

class SubtitleWidget extends StatelessWidget {
  const SubtitleWidget({
    Key? key,
    required this.label,
  }) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColor.primaryColor, borderRadius: BorderRadius.circular(5)),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
      child: Text(
        label,
        style: TextStyle(
            fontSize: 20.sp, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}
