import 'package:auto_route/auto_route.dart';
import 'package:dti_web/routes/app_router.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:flutter/material.dart';

class CustomSecondHeader extends StatelessWidget {
  const CustomSecondHeader({super.key, this.header, this.onBack});
  final Widget? header;
  final Function()? onBack;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: () {
                if (onBack == null) {
                  AutoRouter.of(context).pop();
                } else {
                  onBack!();
                }
              },
              icon: const Icon(
                Icons.arrow_back_rounded,
                size: 30,
                color: AppColor.primaryColor,
              ),
            ),
            Expanded(child: header ?? const SizedBox()),
            InkWell(
              onTap: () {
                AutoRouter.of(context)
                    .pushAndPopUntil(DashboardRoute(), predicate: (e) => false);
              },
              child: Image.asset(
                'assets/images/dti_bottom_icon.png',
                width: 50,
              ),
            )
          ],
        ),
        const Divider(thickness: 1),
      ],
    );
  }
}
