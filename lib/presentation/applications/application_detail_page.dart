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
import 'package:dti_web/utils/date_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ApplicationDetailPage extends StatefulWidget {
  static const String routeName = '/application-detail';
  const ApplicationDetailPage(
      {super.key, required this.firebaseDocId, required this.documentCubit});
  final String firebaseDocId;
  final DocumentCubit documentCubit;

  @override
  State<ApplicationDetailPage> createState() => _ApplicationDetailPageState();
}

class _ApplicationDetailPageState extends State<ApplicationDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<UpdateApplicationCubit>()
          ..getUserApplicationWithImages(widget.firebaseDocId),
        child: BlocBuilder<UpdateApplicationCubit, UpdateApplicationState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () {
                return Container();
              },
              onLoading: (e) {
                return const Center(child: CircularProgressIndicator());
              },
              onGetSingleApplicationWithImage: (e) {
                return SuccessBody(
                  imagesUrl: e.singleResponse.documentUserApplicationUrl,
                  visa: e.singleResponse.visaApplicationModel!,
                  documentCubit: widget.documentCubit,
                );
              },
            );
          },
        ),
      ),
    );
  }
}

TableRow get vertDistance =>
    TableRow(children: [10.verticalSpace, 10.verticalSpace]);

class SuccessBody extends StatelessWidget {
  const SuccessBody(
      {super.key,
      required this.visa,
      required this.documentCubit,
      required this.imagesUrl});
  final VisaApplicationModel visa;
  final DocumentCubit documentCubit;
  final List<dynamic>? imagesUrl;
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
                  value: visa.price.toString(),
                ),
                100.horizontalSpace,
                DetailItemWidget(
                  label: "Guarantor",
                  value: visa.guarantorDTI!
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
                  value: visa.entry!,
                ),
                10.verticalSpace,
                DetailItemWidget(
                  label: "Length of Stay in Indonesia",
                  value: visa.entry == "Single Entry Visa"
                      ? "60 Days after entering Indonesia"
                      : '${visa.multiVisaDuration!} after entering Indonesia',
                ),
                10.verticalSpace,
                DetailItemWidget(
                  label: "Visa must used by",
                  value: visa.entry == "Single Entry Visa"
                      ? "90 Days after issuance date"
                      : '${visa.multiVisaDuration!} after issuance date',
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
                    value: visa.firstName!,
                  ),
                  DetailItemWidget(
                    label: "Last Name",
                    value: visa.lastName!,
                  ),
                ]),
                vertDistance,
                TableRow(children: [
                  DetailItemWidget(
                    label: "Gender",
                    value: visa.gender!.capitalize(),
                  ),
                  DetailItemWidget(
                    label: "Nationality",
                    value: visa.nationality!.capitalize(),
                  ),
                ]),
                vertDistance,
                TableRow(children: [
                  DetailItemWidget(
                    label: "Relationship Status",
                    value: visa.status!.capitalize(),
                  ),
                  DetailItemWidget(
                    label: "Mobile Number",
                    value: "${visa.mobileDialCode}-${visa.mobileNumber} ",
                  ),
                ]),
                vertDistance,
                TableRow(children: [
                  DetailItemWidget(
                    label: "Place Of Birth",
                    value: visa.placeOfBirth!,
                  ),
                  DetailItemWidget(
                    label: "Date of Birth",
                    value: DateConverter.convertDateDefault(visa.dateOfBirth!),
                  ),
                ]),
                vertDistance,
                TableRow(children: [
                  DetailItemWidget(
                    label: "Deported",
                    value: visa.deportedFlag == true ? "YES" : "NO",
                  ),
                  DetailItemWidget(
                    label: "Overstayed",
                    value: visa.overstayedFlag == true ? "YES" : "NO",
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
                    value: visa.address!,
                  ),
                  DetailItemWidget(
                    label: "Province",
                    value: visa.province!,
                  ),
                ]),
                vertDistance,
                TableRow(children: [
                  DetailItemWidget(
                    label: "City",
                    value: visa.city!,
                  ),
                  DetailItemWidget(
                    label: "District",
                    value: visa.district!,
                  ),
                ]),
              ],
            ),
            20.verticalSpace,

            //    SUPPORTING DOCUMENT
            const SubtitleWidget(label: "SUPPORTING DOCUMENT  "),
            20.verticalSpace,
            BlocBuilder<DocumentCubit, DocumentState>(
              bloc: documentCubit,
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
                              imagesUrl!.forEach((element) {
                                final data = element as Map<String, dynamic>;
                                filtered.add(data[e.id!.trim()]);
                              });

                              AutoRouter.of(context)
                                  .push(PhotoViewRoute(images: filtered));
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

            20.verticalSpace,
            //WARNING

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
              value: false,
              title: Text("I Agree to the Term Of Use, and Privacy Policy."),
              onChanged: (value) {},
            ),
            20.verticalSpace,
            BlocProvider(
              create: (context) => getIt<UpdateApplicationCubit>(),
              child:
                  BlocConsumer<UpdateApplicationCubit, UpdateApplicationState>(
                listener: (context, updateState) {
                  print(updateState);
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
                          btnOkOnPress: () {},
                        ).show();
                      });
                },
                builder: (context, updateState) {
                  return updateState.maybeMap(orElse: () {
                    return PrimaryButton(
                      onClick: () {
                        context
                            .read<UpdateApplicationCubit>()
                            .submitVisaApps(visa.firebaseDocId!);
                      },
                      width: 300,
                      label: "CONFIRM",
                      labelStyle: TextStyle(fontSize: 20.sp),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      height: 60,
                    );
                  }, onLoading: (e) {
                    return PrimaryButton(
                      onClick: () {},
                      width: 300,
                      label: "Loading . . . ",
                      labelStyle: TextStyle(fontSize: 20.sp),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      height: 60,
                    );
                  });
                },
              ),
            ),
            100.verticalSpace,
          ],
        ),
      ),
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
