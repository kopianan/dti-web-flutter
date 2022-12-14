// ignore_for_file: constant_identifier_names

import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

// ignore: must_be_immutable
class VisaApplicationCard extends StatelessWidget {
  final Function? onCardClick;
  VisaApplicationCard({
    Key? key,
    this.onCardClick,
    required this.visaApps,
  }) : super(key: key);
  VisaApplicationModel visaApps;

  @override
  Widget build(BuildContext context) {
    // if (visaApplication.subTitle!.length < 35) {
    //   _subtitle = visaApplication.subTitle! + '\n';
    // }
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
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              color: Colors.grey[300],
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      "Application Reference Number${visaApps.applicationID!}",
                      style: const TextStyle(fontSize: 9),
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
                          fontSize: 12,
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
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  SizedBox(
                    width: 100,
                    child: Image.asset(
                      'assets/images/application.webp',
                      scale: 0.8,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: SizedBox(
                              height: 60,
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      visaApps.title ?? "Title",
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      visaApps.subTitle ?? "Subtitle",
                                      style: const TextStyle(
                                        fontSize: 12,
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
                                  style: const TextStyle(
                                    fontSize: 16,
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
                                          style: const TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Length of Stay",
                                          style: const TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  "Created Date",
                                  style: const TextStyle(
                                    fontSize: 10,
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
                                          "CreatedDate",
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "60  ",
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  "CreatedDate",
                                  style: const TextStyle(
                                    fontSize: 12,
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
