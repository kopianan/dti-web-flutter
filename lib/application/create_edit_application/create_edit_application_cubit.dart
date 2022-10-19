import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/core/visa_application_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_edit_application_state.dart';
part 'create_edit_application_cubit.freezed.dart';

@Injectable()
class CreateEditApplicationCubit extends Cubit<CreateEditApplicationState> {
  CreateEditApplicationCubit() : super(CreateEditApplicationState.initial());
  void updatePersonalInformation2({
    required String passportNumber,
    required String dateOfIssue,
    required String dateOfExpire,
    required String issuingCountry,
  }) async {
    final visa = state.visa!.copyWith(
        passportNumber: passportNumber,
        dateOfIssue: dateOfIssue,
        dateOfExpiration: dateOfExpire,
        issuingCountry: issuingCountry);
    print(visa);

    emit(state.copyWith(visa: visa));
  }

  void updatePersonalInformation1({
    required String firstName,
    required String lastName,
    required String placeOfBirth,
    required String dateOfBirth,
    required String gender,
    required String nationality,
    required String relation,
    required String phoneNumber,
    required bool haveDeported,
    required bool haveOverstayed,
  }) async {
    var visa = VisaApplicationModel(
        firstName: firstName,
        lastName: lastName,
        placeOfBirth: placeOfBirth,
        dateOfBirth: dateOfBirth,
        gender: gender,
        nationality: nationality,
        relationshipStatus: relation,
        deportedFlag: haveDeported,
        mobileNumber: phoneNumber,
        overstayedFlag: haveOverstayed);

    emit(state.copyWith(visa: visa));
  }
}
