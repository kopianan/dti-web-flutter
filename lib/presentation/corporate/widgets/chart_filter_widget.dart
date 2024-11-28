import 'package:dti_web/domain/core/chart_filter_model.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';

class ChartFilterWidget extends StatelessWidget {
  const ChartFilterWidget({
    super.key,
    required this.filterModel,
    required this.active,
  });
  final bool active;
  final ChartFilterModel filterModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: active ? AppColor.primaryColor : Colors.white,
      elevation: 5,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(6))),
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 40,
        child: Text(
          filterModel.label,
          style: TextStyle(
            color: active ? Colors.white : Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
