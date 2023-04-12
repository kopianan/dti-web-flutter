import 'dart:io';
import 'dart:typed_data';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:dti_web/application/camera/camera_cubit.dart';
import 'package:dti_web/core/widgets/primary_button.dart';
import 'package:dti_web/injection.dart';
import 'package:dti_web/presentation/questionnaire/widget/custom_second_header.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class CameraPage extends StatefulWidget {
  /// Default Constructor
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController controller;
  late void _initializeControllerFuture;

  Future<void> initCamera() async {
    await Future.delayed(Duration(seconds: 1));
    _initializeControllerFuture = await controller.initialize();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // if (!controller!.value.isInitialized) {
    //   return Container();
    // }

    return Scaffold(
      body: BlocProvider(
          create: (context) => getIt<CameraCubit>()..getCameraAvailability(),
          child: BlocListener<CameraCubit, CameraState>(
            listener: (context, state) {
              switch (state.status) {
                case CameraStatus.init:
                  // TODO: Handle this case.
                  break;
                case CameraStatus.loading:
                  // TODO: Handle this case.
                  break;
                case CameraStatus.error:
                  // TODO: Handle this case.
                  break;
                case CameraStatus.success:
                  controller = CameraController(
                      state.cameras.first, ResolutionPreset.medium);
                  break;
              }
            },
            child: BlocBuilder<CameraCubit, CameraState>(
              builder: (context, state) {
                if (state.status == CameraStatus.success) {
                  return FutureBuilder(
                      future: initCamera(),
                      builder: (context, cameraSnapshot) {
                        return BlocBuilder<CameraCubit, CameraState>(
                            builder: (context, cameraState) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomSecondHeader(
                                onBack: () {
                                  AutoRouter.of(context).pop(null);
                                },
                              ),
                              Container(
                                  color: Colors.green,
                                  width: 600,
                                  height: 400,
                                  child: cameraState.file == null
                                      ? CameraPreview(controller)
                                      : kIsWeb
                                          ? Image.memory(cameraState.bytes!)
                                          : Image.file(
                                              File(cameraState.file!.path))),
                              Expanded(
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    PrimaryButton(
                                      onClick: () async {
                                        if (cameraState.file == null) {
                                          //Take Picture
                                          await controller.pausePreview();
                                          final file =
                                              await controller.takePicture();

                                          context
                                              .read<CameraCubit>()
                                              .updateImageFile(file);
                                        } else {
                                          //retake picture
                                          context
                                              .read<CameraCubit>()
                                              .cleanFile();
                                          await controller.resumePreview();
                                        }
                                      },
                                      width: 200.w,
                                      height: 50.h,
                                      label: cameraState.file == null
                                          ? "Take Picture"
                                          : "Retake Picture",
                                      labelStyle: TextStyle(
                                        fontSize: 18.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 20.w),
                                    Visibility(
                                      visible: cameraState.file == null
                                          ? false
                                          : true,
                                      child: Container(
                                        width: 200.w,
                                        height: 50.h,
                                        child: ElevatedButton(
                                          style: ButtonStyle(
                                              elevation:
                                                  MaterialStatePropertyAll(0),
                                              backgroundColor:
                                                  MaterialStatePropertyAll(
                                                      Colors.transparent)),
                                          child: Text(
                                            "Use This Picture",
                                            style: TextStyle(
                                              fontSize: 18.sp,
                                              color: Colors.blue,
                                            ),
                                          ),
                                          onPressed: () async {
                                            await controller.dispose();
                                            AutoRouter.of(context)
                                                .pop(cameraState.file);
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          );
                        });
                      });
                } else {
                  return Container();
                }
              },
            ),
          )),
    );
  }
}
