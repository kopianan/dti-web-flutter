import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'camera_state.dart';
part 'camera_cubit.freezed.dart';

enum CameraStatus { init, loading, error, success }

@injectable
class CameraCubit extends Cubit<CameraState> {
  CameraCubit() : super(CameraState.initial());

  void getCameraAvailability() async {
    emit(state.copyWith(status: CameraStatus.loading));
    try {
      final cameras = await availableCameras();
      if (cameras.isEmpty) {
        emit(state.copyWith(
            cameraError: "No Camera Found", status: CameraStatus.error));
      } else {
        emit(state.copyWith(
          cameras: cameras,
          status: CameraStatus.success,
          cameraError: '',
        ));
      }
    } on CameraException catch (e) {
      emit(state.copyWith(
          cameraError: e.description ?? "Camera Error",
          status: CameraStatus.error));
    }
  }

  void cleanFile() async {
    emit(state.copyWith(file: null, bytes: null));
  }

  void updateImageFile(XFile file) async {
    Uint8List? byte;
    if (kIsWeb) {
      byte = await file.readAsBytes();
    }
    emit(state.copyWith(file: file, bytes: byte));
  }
}
