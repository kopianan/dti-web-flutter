// ignore_for_file: constant_identifier_names

import 'package:dti_web/domain/core/simple_visa_model.dart';
import 'package:dti_web/domain/core/visa_application_corp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class VisaApplicationCorpCard extends StatelessWidget {
  const VisaApplicationCorpCard({
    Key? key,
    this.onCardClick,
    required this.visa,
  }) : super(key: key);
  final Function()? onCardClick;
  final SimpleVisaModel visa;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onCardClick,
      child: Card(
        shadowColor: Colors.black,
        elevation: 1,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              color: Colors.grey[300],
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Application Reference Number : ${visa.applicationID}",
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
                        backgroundColor: checkStatusColor(visa.status),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        visa.status ?? "",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          color: checkStatusColor(visa.status),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100.w,
                    child: Image.asset(
                      'assets/icons/approved.png',
                      scale: 0.8,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 50),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: SizedBox(
                              // height: 80,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      visa.title ?? "",
                                      style: TextStyle(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      visa.subTitle ?? "",
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

  Color checkStatusColor(String? status) {
    if (status == null) return Colors.grey;
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
