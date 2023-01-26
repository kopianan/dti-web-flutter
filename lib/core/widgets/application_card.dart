// ignore_for_file: constant_identifier_names

import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:dti_web/utils/date_converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class VisaApplicationCard extends StatelessWidget {
  final Function? onCardClick;
  VisaApplicationCard({
    Key? key,
    this.onCardClick,
    required this.visaApps,
  }) : super(key: key);
  SimpleVisaModel visaApps;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onCardClick!();
      },
      child: Card(
        shadowColor: Colors.black,
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: REdgeInsets.symmetric(
                vertical: 10,
                horizontal: 10,
              ),
              color: Colors.grey[300],
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Application Reference Number ${visaApps.applicationID!}",
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: checkStatusColor(visaApps.status!),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        visaApps.status!,
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: checkStatusColor(visaApps.status!),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: REdgeInsets.all(10.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100.w,
                    child: Image.asset(
                      'assets/images/application.webp',
                      scale: 0.8,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10.sp),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: SizedBox(
                              height: 60.h,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      visaApps.title ?? "Title",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      visaApps.subTitle ?? "Subtitle",
                                      style: TextStyle(
                                        fontSize: 12.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                            )),
                            const Icon(Icons.keyboard_arrow_right_rounded)
                          ],
                        ),
                        Table(
                          columnWidths: const {0: FractionColumnWidth(.7)},
                          children: [
                            TableRow(
                              children: [
                                Text(
                                  "Estimated",
                                  style: TextStyle(
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(''),
                              ],
                            ),
                            const TableRow(
                              children: [
                                Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                                Divider(
                                  color: Colors.black,
                                  thickness: 1,
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Table(
                                  children: [
                                    TableRow(
                                      children: [
                                        Text(
                                          "Used By",
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Length of Stay",
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  "Created Date",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ],
                            ),
                            TableRow(
                              children: [
                                Table(
                                  children: [
                                    TableRow(
                                      children: [
                                        // Text(
                                        //   '${price!} USD',
                                        //   style: const TextStyle(
                                        //     color: Colors.white,
                                        //     fontSize: 12,
                                        //     fontWeight: FontWeight.bold,
                                        //   ),
                                        // ),
                                        Text(
                                          DateConverter.convertDateDefault(
                                              visaApps.usedByDate),
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "${visaApps.lengthOfStay} Days",
                                          style: TextStyle(
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  DateConverter.convertDateDefault(
                                      visaApps.createdDate),
                                  maxLines: 1,
                                  style:   TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.end,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color checkStatusColor(String status) {
    if (status == ApplicationStatus.completed.name ||
        status == ApplicationStatus.paid.name) {
      return Colors.green;
    } else if (status == ApplicationStatus.draft.name) {
      return Colors.grey;
    } else if (status == ApplicationStatus.rejected.name) {
      return Colors.red;
    } else if (status == ApplicationStatus.pending_payment.name) {
      return Colors.amber;
    } else if (status == ApplicationStatus.submitted.name) {
      return Colors.blue;
    } else {
      return Colors.grey;
    }
  }
}

enum ApplicationStatus {
  draft,
  submitted,
  pending_payment,
  paid,
  completed,
  rejected
}

extension ParseToString on ApplicationStatus {
  String get name {
    switch (this) {
      case ApplicationStatus.draft:
        return "Draft";

      case ApplicationStatus.submitted:
        return "Submitted";

      case ApplicationStatus.pending_payment:
        return "Pending Payment";
      case ApplicationStatus.paid:
        return "Paid";
      case ApplicationStatus.completed:
        return "Completed";
      case ApplicationStatus.rejected:
        return "Rejected";
    }
  }
}
