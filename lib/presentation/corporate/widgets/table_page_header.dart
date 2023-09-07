import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TablePageHeader extends StatelessWidget {
  const TablePageHeader({
    super.key,
    required this.label,
    required this.onDelete,
    required this.onSearch,
    required this.controller,
    required this.onRefresh,
  });

  final String label;
  final ValueChanged<String>? onSearch;
  final Function()? onDelete;
  final Function()? onRefresh;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        const Spacer(),
        Visibility(
          visible: onSearch != null,
          child: SizedBox(
            width: 250,
            height: 45,
            child: TextFormField(
              controller: controller,
              onFieldSubmitted: onSearch,
              decoration: InputDecoration(
                labelText: "Search by Name",
                hintText: "Search by Name",
                suffixIcon: IconButton(
                  onPressed: onDelete,
                  icon: const Icon(Icons.clear),
                ),
                border: const OutlineInputBorder(),
                enabledBorder: const OutlineInputBorder(),
                focusedBorder: const OutlineInputBorder(),
              ),
            ),
          ),
        ),
        const SizedBox(width: 30),
        Container(
          constraints: BoxConstraints(minWidth: 100.w),
          height: 45.h,
          child: OutlinedButton.icon(
              label: Text(
                "Refresh",
                style: TextStyle(fontSize: 16.sp),
              ),
              icon: const Icon(Icons.refresh),
              onPressed: onRefresh),
        ),
      ],
    );
  }
}
