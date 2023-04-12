part of 'camera_cubit.dart';

@freezed
class CameraState with _$CameraState {
  factory CameraState(
      {XFile? file,
      required CameraStatus status,
      Uint8List? bytes,
      @Default('') String cameraError,
      @Default([]) List<CameraDescription> cameras}) = _CameraState;
  factory CameraState.initial() => CameraState(status: CameraStatus.init);
}
