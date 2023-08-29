import 'package:dti_web/application/document/document_cubit.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/applications/application_detail_page.dart';
import 'package:dti_web/presentation/questionnaire/photo_view_page.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/date_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class PassportDetailWidget extends StatelessWidget {
  const PassportDetailWidget({
    super.key,
    required this.visa,
    required this.imagesUrl,
  });

  final VisaApplicationModel visa;
  final List<Map<String, dynamic>> imagesUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Visa Detail Summary',
              style: TextStyle(
                  fontSize: 33.sp,
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold),
            ),
            30.verticalSpace,
            SubtitleWidget(label: '${visa.title} - ${visa.subTitle} '),
            20.verticalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SubtitleWidget(label: "PERSONAL PARTICULAR"),
                20.verticalSpace,
                //VISIT INFORMATION 2
                Table(
                  defaultColumnWidth: FixedColumnWidth(400.w),
                  children: [
                    TableRow(children: [
                      DetailItemWidget(
                        label: "First Name",
                        value: visa.firstName ?? "",
                      ),
                      DetailItemWidget(
                        label: "Last Name",
                        value: visa.lastName ?? "",
                      ),
                    ]),
                    TableRow(children: [10.verticalSpace, 10.verticalSpace]),
                    TableRow(children: [
                      DetailItemWidget(
                        label: "Gender",
                        value: visa.gender?.capitalize() ?? "",
                      ),
                      DetailItemWidget(
                        label: "Date of Birth",
                        value: DateConverter.convertDateDefault(
                            visa.dateOfBirth ?? ""),
                      ),
                    ]),
                    TableRow(children: [10.verticalSpace, 10.verticalSpace]),
                    TableRow(children: [
                      DetailItemWidget(
                        label: "Indonesian Identity Card Number",
                        value: visa.identityNumber ?? "",
                      ),
                      const DetailItemWidget(
                        label: "",
                        value: "",
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
                      children: [
                        //General document
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: state.docs!.map((e) {
                            return InkWell(
                                onTap: () {
                                  var data = e.imageList!;
                                  List<String>? filtered = [];
                                  data.removeWhere(
                                      (element) => element == null);
                                  if (data.isNotEmpty) {
                                    for (var element in imagesUrl) {
                                      final data = element;
                                      if (data.containsKey(e.id)) {
                                        //check if id is same then get the data
                                        filtered.add(data[e.id!.trim()]);
                                      }
                                    }

                                    //check if image is pdf
                                    if (e.attachment != null &&
                                        e.attachment!.contains('.doc')) {
                                      // file is document, not picture
                                      launch(filtered.single);
                                      // AutoRouter.of(context)
                                      //     .navigate(
                                      //   DTIPdfViewerRoute(
                                      //     imageUrl: filtered.single,
                                      //     isNetwork: true,
                                      //   ),
                                      // );
                                    } else {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                            ),
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 100, vertical: 100),
                                            width: ScreenUtil().screenWidth,
                                            height: ScreenUtil().screenHeight,
                                            child: PhotoViewPage(
                                              images: filtered,
                                              isNetwork: true,
                                            ),
                                          );
                                        },
                                      );
                                      // AutoRouter.of(context).push(PhotoViewRoute(
                                      //     images: filtered, isNetwork: true));
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
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  decoration: const BoxDecoration(
                                      border: Border(
                                    bottom: BorderSide(
                                      width: 1,
                                      color: AppColor.primaryColor,
                                    ),
                                  )),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Icon(
                                        Icons.download_sharp,
                                        size: 30,
                                        color: AppColor.primaryColor,
                                      ),
                                      5.horizontalSpace,
                                      Expanded(
                                        child: Text(
                                          e.header!,
                                          style: TextStyle(
                                              fontSize: 20.sp,
                                              color: AppColor.primaryColor),
                                        ),
                                      ),
                                    ],
                                  ),
                                ));
                          }).toList(),
                        ),
                        //Selfie
                        InkWell(
                          onTap: () {
                            final data = imagesUrl.firstWhere(
                                (element) => element.containsKey('Selfie'));

                            showDialog(
                              context: context,
                              builder: (context) {
                                return Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                  ),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 100, vertical: 100),
                                  width: ScreenUtil().screenWidth,
                                  height: ScreenUtil().screenHeight,
                                  child: PhotoViewPage(
                                    images: [data.values.single],
                                    isNetwork: true,
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            decoration: const BoxDecoration(
                                border: Border(
                              bottom: BorderSide(
                                width: 1,
                                color: AppColor.primaryColor,
                              ),
                            )),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(
                                  Icons.download_sharp,
                                  size: 30,
                                  color: AppColor.primaryColor,
                                ),
                                5.horizontalSpace,
                                Expanded(
                                  child: Text(
                                    "Selfie",
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        color: AppColor.primaryColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  },
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    30.verticalSpace,
                    Text(
                      "Reference Number",
                      style: TextStyle(
                        fontSize: 25.sp,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    10.verticalSpace,
                    Text(
                      visa.applicationID ?? "",
                      style: TextStyle(
                        fontSize: 22.sp,
                        color: AppColor.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Visibility(
                  visible: (visa.status!.toLowerCase() == "completed" ||
                      visa.status!.toLowerCase() == "paid"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      30.verticalSpace,
                      Text(
                        "E Booking Pass",
                        style: TextStyle(
                          fontSize: 25.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      10.verticalSpace,
                      Text(
                        visa.bookingCode ?? "",
                        style: TextStyle(
                          fontSize: 22.sp,
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ])),
    );
  }
}
