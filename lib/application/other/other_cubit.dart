import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/other/i_other.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'other_state.dart';
part 'other_cubit.freezed.dart';

@injectable
class OtherCubit extends Cubit<OtherState> {
  OtherCubit(this.iOther) : super(OtherState.initial());

  IOther iOther;

  void getImageUrl(
    String appId,
    String docId,
    String? filename,
  ) async {
    emit(OtherState.loading());

    if (filename == null) {
      emit(OtherState.nullImage());
    } else {
      if (filename.contains('/')) {
        emit(OtherState.imageLocal(filename));
      } else {
        var result = await iOther.getImageUrl(
            applicationId: appId, documentId: docId, fileName: filename);

        result.fold(
          (l) => emit(OtherState.error()),
          (r) => emit(OtherState.onGetImageUrl(r)),
        );
      }
    }
  }
}
