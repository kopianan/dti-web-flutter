import 'package:bloc/bloc.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:dti_web/core/storage.dart';
import 'package:dti_web/domain/core/document_data_model.dart';
import 'package:dti_web/domain/global/failures.dart';
import 'package:dti_web/domain/other/i_other.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_data_model.dart';
import 'package:dti_web/domain/questionnaire/questionnaire_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'other_state.dart';
part 'other_cubit.freezed.dart';

@injectable
class OtherCubit extends Cubit<OtherState> {
  OtherCubit(this.iOther) : super(const OtherState.initial());

  IOther iOther;
  void generateOtp(
      CountryCode countryCode, String number, String channel) async {
    emit(const OtherState.loading());
    final data = await iOther.generateOtp(countryCode, number, channel);
    data.fold(
      (l) => emit(OtherState.errorState(l)),
      (r) => emit(OtherState.onOTPGenerated(r)),
    );
  }

  void contactUs(String name, String title) async {
    emit(const OtherState.loading());
    final data = await iOther.contactUs(name, title);
    data.fold(
      (l) => emit(OtherState.errorState(l)),
      (r) => emit(OtherState.onContactUs(r)),
    );
  }

  void sendFeedback(String comment, int rating) async {
    emit(const OtherState.loading());
    final data = await iOther.sendFeedback(rating, comment);
    data.fold(
      (l) => emit(OtherState.errorState(l)),
      (r) => emit(OtherState.onFeedbackSent(r)),
    );
  }

  void verifyOtp(CountryCode countryCode, String number, String otpCode) async {
    emit(const OtherState.loading());
    final data = await iOther.verifyOtp(
      countryCode: countryCode,
      phoneNumber: number,
      code: otpCode,
    );
    data.fold(
      (l) => emit(OtherState.errorState(l)),
      (r) => emit(OtherState.onOTPVerified(r)),
    );
  }

  void getQuestionnaireList() async {
    emit(const OtherState.loading());
    final data = await iOther.getQuestionnaireList();
    data.fold(
      (l) => emit(OtherState.errorState(l)),
      (r) => emit(OtherState.getAllQuestionnaire(r)),
    );
  }

  void getDocumentsData() async {
    emit(const OtherState.loading());
    final data = await iOther.getApplicationMasterData();

    data.fold(
      (l) => emit(OtherState.errorState(l)),
      (r) {
        //save to local
        Storage().saveListDocument(r);
        emit(OtherState.getAllDocumentData(r));
      },
    );
  }

  void getLocation() async {
    emit(const OtherState.loading());
    final data = await iOther.getLocation();

    data.fold(
      (l) => emit(OtherState.errorState(l)),
      (r) {},
    );
  }

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
