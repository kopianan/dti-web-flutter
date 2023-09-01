part of 'admin_data_cubit.dart';

@freezed
class AdminDataState with _$AdminDataState {
  const AdminDataState._();
  const factory AdminDataState({
    @Default([]) List<SimpleVisaModel> application,
    @Default([]) List<ContactUsModel> contacts,
    @Default([]) List<CustomerModel> users,
    @Default([]) List<FeedbackModel> feedbacks,
    @Default(SearchType.application) SearchType searchType,
    @Default("") String searchKeywoard,
  }) = _AdminDataState;
  factory AdminDataState.initial() => const AdminDataState();

  List<CustomerModel> getCustomers() {
    if (searchType == SearchType.customer) {
      return users.where((element) {
        return element.name
            .toLowerCase()
            .contains(searchKeywoard.toLowerCase());
      }).toList();
    }
    return users.toList();
  }

  List<FeedbackModel> getFeedbacks() { print(searchType);
    if (searchType == SearchType.feedback) {
      return feedbacks.where((element) {
        return element.name
            .toLowerCase()
            .contains(searchKeywoard.toLowerCase());
      }).toList();
    }
    return feedbacks.toList();
  }

  List<SimpleVisaModel> getListApplication() {
    if (searchType == SearchType.application) {
      return application.where((element) {
        if (element.userName != null) {
          return element.userName!
              .toLowerCase()
              .contains(searchKeywoard.toLowerCase());
        }
        return false;
      }).toList();
    }
    return application.toList();
  }

  List<ContactUsModel> getContactUs() {
   
    if (searchType == SearchType.contactUse) {
      return contacts.where((element) {
        return element.name
            .toLowerCase()
            .contains(searchKeywoard.toLowerCase());
      }).toList();
    }
    return contacts.toList();
  }
}
