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

class ApplicationDetailWidget extends StatelessWidget {
  const ApplicationDetailWidget({
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              'Visa Detail Summary',
              style: TextStyle(
                  fontSize: 33.sp,
                  color: AppColor.primaryColor,
                  fontWeight: FontWeight.bold),
            ),
            30.verticalSpace,
            SubtitleWidget(
                label: '${visa.title} - ${visa.subTitle} - ${visa.entry}'),
            20.verticalSpace,
            DetailItemWidget(
              label: "Guarantor",
              value: visa.guarantorDTI!
                  ? "Door To Indonesia"
                  : "Non Door To Indonesia",
            ),
            20.verticalSpace,
            const SubtitleWidget(label: " VISA INFORMATION"),
            20.verticalSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DetailItemWidget(
                  label: "Type of Visa",
                  value: visa.entry ?? "",
                ),
                10.verticalSpace,
                DetailItemWidget(
                  label: "Length of Stay in Indonesia",
                  value: visa.entry == "Single Entry Visa"
                      ? visa.subTitle == "Visa On Arrival"
                          ? "30 Days after entering Indonesia."
                          : "60 Days after entering Indonesia"
                      : '${visa.multiVisaDuration ?? ""} after entering Indonesia',
                ),
                10.verticalSpace,
                DetailItemWidget(
                  label: "Visa must used by",
                  value: visa.entry == "Single Entry Visa"
                      ? visa.subTitle == "Visa On Arrival"
                          ? "90 days after issuance date."
                          : "90 Days after issuance date"
                      : '${visa.multiVisaDuration ?? ""} after issuance date',
                ),
              ],
            ),
            20.verticalSpace,
            const SubtitleWidget(label: "PERSONAL PARTICULAR"),
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
                TableRow(children: [10.verticalSpace, 10.verticalSpace]),
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
                TableRow(children: [10.verticalSpace, 10.verticalSpace]),
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
                TableRow(children: [10.verticalSpace, 10.verticalSpace]),
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
                TableRow(children: [10.verticalSpace, 10.verticalSpace]),
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
                TableRow(children: [10.verticalSpace, 10.verticalSpace]),
                TableRow(children: [
                  DetailItemWidget(
                    label: "Mother's Name",
                    value: visa.motherName ?? "-",
                  ),
                  const DetailItemWidget(
                    label: "",
                    value: "",
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
                    label: "Passport No",
                    value: visa.passportNumber!,
                  ),
                  DetailItemWidget(
                    label: "Issuing Country",
                    value: visa.issuingCountry!,
                  ),
                ]),
                TableRow(children: [10.verticalSpace, 10.verticalSpace]),
                TableRow(children: [
                  DetailItemWidget(
                    label: "Date of Issue",
                    value: DateConverter.convertDateDefault2(
                        DateTime.parse(visa.dateOfIssue!)),
                  ),
                  DetailItemWidget(
                    label: "Date of expiration",
                    value: DateConverter.convertDateDefault2(
                        DateTime.parse(visa.dateOfExpiration!)),
                  ),
                ]),
              ],
            ),
            20.verticalSpace,
            //IN INDONESIA
            const SubtitleWidget(label: "INDONESIA'S RESIDENTIAL"),
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
                TableRow(children: [10.verticalSpace, 10.verticalSpace]),
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
            Visibility(
              visible: visa.subTitle == "Visa On Arrival" ? true : false,
              child: Column(
                children: [
                  //Arrival Information
                  const SubtitleWidget(label: "ARRIVAL INFORMATION"),
                  20.verticalSpace,
                  Table(
                    defaultColumnWidth: FixedColumnWidth(400.w),
                    children: [
                      TableRow(children: [
                        DetailItemWidget(
                          label: "Flight Number",
                          value: visa.flightNumber ?? "",
                        ),
                        DetailItemWidget(
                          label: "Mode Of Transportation",
                          value: visa.modeOfTransportation ?? "",
                        ),
                      ]),
                      TableRow(children: [10.verticalSpace, 10.verticalSpace]),
                      TableRow(children: [
                        DetailItemWidget(
                          label: "Arrival Date",
                          value: visa.arrivalDate == null
                              ? ""
                              : DateConverter.convertDateDefault2(
                                  DateTime.parse(visa.arrivalDate!)),
                        ),
                        const DetailItemWidget(
                          label: "",
                          value: '',
                        ),
                      ]),
                    ],
                  ),
                ],
              ),
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
                              // AutoRouter.of(context).navigate(
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
                                      borderRadius: BorderRadius.circular(10),
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
                                child: SelectableText(
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
                );
              },
            ),
            //Application ID
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                30.verticalSpace,
                SelectableText(
                  "Reference Number",
                  style: TextStyle(
                    fontSize: 25.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                10.verticalSpace,
                SelectableText(
                  visa.applicationID ?? "",
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),

            50.verticalSpace,
          ],
        ),
      ),
    );
  }
}
