import 'package:bloc/bloc.dart';
import 'package:dti_web/domain/contact_us/contact_us_model.dart';
import 'package:dti_web/domain/contact_us/i_contact_us.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'contact_us_state.dart';
part 'contact_us_cubit.freezed.dart';

@injectable
class ContactUsCubit extends Cubit<ContactUsState> {
  ContactUsCubit(this.iContactUs) : super(const ContactUsState.initial());

  final IContactUs iContactUs;

  void getAllCustomer() async {
    emit(const ContactUsState.loading());
    final result = await iContactUs.getAllContactUsData();
    result.fold(
      (l) => emit(const ContactUsState.error()),
      (r) {
        var contactUs = r.toList();
        contactUs.sort((a, b) => b.createdDate.compareTo(a.createdDate));
        emit(ContactUsState.getAllContactUsData(contactUs));
      },
    );
  }
}
