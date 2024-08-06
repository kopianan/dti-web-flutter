import 'package:dti_web/domain/core/visa_application_corp.dart';
import 'package:dti_web/presentation/applications/application_corp_detail_page.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/date_converter.dart';
import 'package:flutter/material.dart';

class CompanyParticularCompany extends StatelessWidget {
  const CompanyParticularCompany({
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
                TableRow(
                  children: [
                    DetailItemWidget(
                      label: "Company Name",
                      value: visaCorp.companyName,
                    ),
                    DetailItemWidget(
                      label: "Company Website",
                      value: visaCorp.companyWebsite,
                    )
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
                    Text(
                      "Industry Type",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Company Address",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      visaCorp.industryType ?? "",
                      style: const TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      visaCorp.companyAddress,
                      style: const TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
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
                    Text(
                      "Contact Name",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Contact Email",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      visaCorp.cpName,
                      style: const TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      visaCorp.cpEMail,
                      style: const TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
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
                    Text(
                      "Contact Phone",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "City in Indonesia",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      visaCorp.cpPhoneNumber,
                      style: const TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      visaCorp.province ?? "",
                      style: const TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
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
                    Text(
                      "Start Date",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "End Date",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Text(
                      DateConverter.convertDateDefault(
                          visaCorp.expectedTimelineFrom),
                      style: const TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      DateConverter.convertDateDefault(
                          visaCorp.expectedTimelineTo),
                      style: const TextStyle(
                        color: AppColor.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
