// import 'dart:html' as html;
import 'dart:io';
import 'package:dti_web/application/application_cubit.dart';
import 'package:dti_web/application/document/document_cubit.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/applications/widgets/document_left_side.dart';
import 'package:dti_web/presentation/applications/widgets/document_right_side.dart';

import 'package:dti_web/utils/app_color.dart';
import 'package:dti_web/utils/image_function.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:image_picker_web/image_picker_web.dart';

class UploadDocumentPage extends StatefulWidget {
  static const String routeName = '/upload-document';
  const UploadDocumentPage({super.key});

  @override
  State<UploadDocumentPage> createState() => _UploadDocumentPageState();
}

class _UploadDocumentPageState extends State<UploadDocumentPage> {
  // MediaInfo? selectedImage;

  final documentCubit = getIt<DocumentCubit>();
  final appCubit = getIt<ApplicationCubit>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<ApplicationCubit, ApplicationState>(
        listener: (context, state) {
          context
              .read<DocumentCubit>()
              .setupApplication(state.visaApplicationModel!);
        },
        builder: (context, state) {
          return BlocProvider(
            create: (context) =>
                documentCubit..setupApplication(state.visaApplicationModel!),
            child: Container(
              padding: REdgeInsets.symmetric(horizontal: 60.w),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Multiple Entry Duration',
                      style: TextStyle(
                          fontSize: 30.sp,
                          color: AppColor.primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                    30.verticalSpace,
                    BlocBuilder<DocumentCubit, DocumentState>(
                      builder: (context, docState) {
                        return Expanded(
                            child: Container(
                          child: Row(
                            children: [
                              LeftSide(documentCubit: documentCubit),
                              RighSide(documentCubit: documentCubit)
                            ],
                          ),
                        ));
                      },
                    )
                  ]),
            ),
          );
        },
      ),
    );
  }
}
