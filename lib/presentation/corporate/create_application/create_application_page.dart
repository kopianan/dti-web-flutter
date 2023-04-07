import 'dart:io' as io;
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/src/painting/box_border.dart' as border;
import 'package:dti_web/application/agent/create_new_application_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/utils/app_color.dart';
import 'package:excel/excel.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class CreateApplicationPage extends StatefulWidget {
  const CreateApplicationPage({super.key});

  @override
  State<CreateApplicationPage> createState() => _CreateApplicationPageState();
}

class _CreateApplicationPageState extends State<CreateApplicationPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNewApplicationCubit, CreateNewApplicationState>(
      builder: (context, state) {
        if (state.excelBytes != null) {
          return FilledRecordWidget();
        } else {
          return EmptyRecordWidget();
        }
      },
    );
  }
}

class CreateApplicationModal extends StatelessWidget {
  const CreateApplicationModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 500,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20.w, left: 20.w, right: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Create Application",
                  style: TextStyle(
                    fontSize: 30.sp,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.close),
                  iconSize: 30.sp,
                )
              ],
            ),
          ),
          SizedBox(height: 30.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(child: Text('1')),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () async {
                            await launchUrl(Uri.parse(
                                "https://docs.google.com/spreadsheets/d/1VeT0kKWpurZ7zsYqQnAUsJKxQw-gXi4h/edit?usp=share_link&ouid=111746787850921804428&rtpof=true&sd=true"));
                          },
                          child: Text(
                            "Download Template",
                            style:
                                TextStyle(fontSize: 20.sp, color: Colors.blue),
                          ),
                        ),
                        Text(
                          "Latest Template\nAdded new Visa selection",
                          style: TextStyle(fontSize: 20.sp, color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(child: Text('2')),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Upload Filled Template",
                          style:
                              TextStyle(fontSize: 20.sp, color: Colors.black),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                              border: border.Border.all(color: Colors.black)),
                          child: InkWell(
                            onTap: () async {
                              //get file
                              final pickedFile =
                                  await FilePicker.platform.pickFiles(
                                allowMultiple: false,
                                type: FileType.custom,
                                allowedExtensions: ['xlsx'],
                              );
                              if (pickedFile != null) {
                                //update file
                                getIt<CreateNewApplicationCubit>()
                                    .setPickedFile(pickedFile);
                              }
                            },
                            child: BlocBuilder<CreateNewApplicationCubit,
                                CreateNewApplicationState>(
                              bloc: getIt<CreateNewApplicationCubit>(),
                              builder: (context, state) {
                                return Column(
                                  children: [
                                    Icon(
                                      Icons.file_copy,
                                      size: 100.sp,
                                    ),
                                    SizedBox(height: 30.sp),
                                    Text(
                                      state.pickedFile == null
                                          ? "Click here to select your file"
                                          : state.pickedFile?.names.single ??
                                              "file name",
                                      style: TextStyle(
                                          fontSize: 20.sp, color: Colors.grey),
                                    ),
                                    SizedBox(height: 30.sp),
                                  ],
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30.h),
                Row(
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    PrimaryButton(
                      height: 50.h,
                      width: 100.w,
                      bgColor: Colors.grey[100],
                      onClick: () {},
                      label: "Cancel",
                      labelStyle: TextStyle(
                          fontSize: 15.sp, color: AppColor.primaryColor),
                    ),
                    SizedBox(width: 20.w),
                    PrimaryButton(
                      height: 50.h,
                      width: 100.w,
                      onClick: () {
                        Navigator.of(context).pop(true);
                      },
                      label: "Create",
                      labelStyle: TextStyle(fontSize: 15.sp),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FilledRecordWidget extends StatelessWidget {
  FilledRecordWidget({super.key});
  final horizontal = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      child: BlocBuilder<CreateNewApplicationCubit, CreateNewApplicationState>(
        builder: (context, state) {
          return Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Needs Validation",
                          style: TextStyle(
                              fontSize: 30.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 20.sp),
                        PrimaryButton(
                          onClick: () {
                            //reset
                            context
                                .read<CreateNewApplicationCubit>()
                                .resetData();
                          },
                          label: 'Reset',
                          height: 40.h,
                          width: 100.w,
                          labelStyle: TextStyle(fontSize: 20.sp),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "03 Selected",
                          style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 20.sp),
                        PrimaryButton(
                          onClick: () {},
                          label: 'Confirm',
                          height: 40.h,
                          width: 120.w,
                          labelStyle: TextStyle(fontSize: 20.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.h),
              Expanded(
                child: DataTable2(
                  columnSpacing: 12,
                  horizontalMargin: 12,
                  minWidth: 10600,
                  columns: state.header
                      .map((header) => DataColumn2(
                          fixedWidth: 300,
                          label: Text(
                            header?.value.toString() ?? "null",
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          )))
                      .toList(),
                  rows: state.body
                      .map((body) => DataRow2(
                          onSelectChanged: (e) {
                            print(e);
                          },
                          cells: body
                              .map(
                                (e) => DataCell(
                                  Text(
                                    e?.value.toString() ?? "null",
                                    style: TextStyle(
                                        fontSize: 14.sp,
                                        color: e?.value == null
                                            ? Colors.red
                                            : Colors.black),
                                  ),
                                ),
                              )
                              .toList()))
                      .toList(),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class EmptyRecordWidget extends StatelessWidget {
  const EmptyRecordWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 30.w),
      shape: border.Border.all(color: Colors.black),
      clipBehavior: Clip.hardEdge,
      child: Container(
          height: 300,
          padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 40.h),
          color: Colors.white70,
          child: Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: PrimaryButton(
                  onClick: () async {
                    final result = await showDialog(
                      context: context,
                      builder: (context) {
                        return const Dialog(
                          child: CreateApplicationModal(),
                        );
                      },
                    );
                    if (result == true) {
                      //calculate the data.
                      getIt<CreateNewApplicationCubit>().extractExcelBytes();
                    }
                  },
                  label: "Create",
                  padding: EdgeInsets.all(20),
                  height: 50.h,
                  width: 120.w,
                  labelStyle: TextStyle(fontSize: 20.sp),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "You do not have any applications to validate.",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Please upload the new applications by clicking “Create”",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
