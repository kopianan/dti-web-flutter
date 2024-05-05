import 'package:dti_web/domain/core/visa_application_corp.dart';
import 'package:dti_web/presentation/applications/application_corp_detail_page.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class CompanyParticularForeigner extends StatelessWidget {
  const CompanyParticularForeigner({
    super.key,
    required this.visaCorp,
  });

  final VisaApplicationCorp visaCorp;
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 10,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Table(
              children: [
                TableRow(children: [
                  DetailItemWidget(
                      label: "Company Name", value: visaCorp.companyName),
                  DetailItemWidget(
                      label: "Company Website", value: visaCorp.companyWebsite),
                ]),
                const TableRow(
                  children: [
                    Text(''),
                    Text(''),
                  ],
                ),
                TableRow(
                  children: [
                    DetailItemWidget(
                      label: "Industry Type",
                      value: visaCorp.industryType,
                    ),
                    DetailItemWidget(
                      label: "Company Address",
                      value: visaCorp.companyAddress,
                    ),
                  ],
                ),
                const TableRow(
                  children: [
                    Text(''),
                    Text(''),
                  ],
                ),
                TableRow(
                  children: [
                    DetailItemWidget(
                        label: "Contact Name", value: visaCorp.cpName),
                    DetailItemWidget(
                      label: "Contact Email",
                      value: visaCorp.cpEMail,
                    )
                  ],
                ),
                const TableRow(
                  children: [
                    Text(''),
                    Text(''),
                  ],
                ),
                TableRow(children: [
                  DetailItemWidget(
                      label: "Contact Phone", value: visaCorp.cpPhoneNumber),
                  DetailItemWidget(
                      label: "Number of Foreign Worker",
                      value: visaCorp.numberForeigner.toString()),
                ])
              ],
            ),
          ],
        ),
      ),
    );
  }
}
