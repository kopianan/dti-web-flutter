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
    if (searchType == SearchType.customer && searchKeywoard.isNotEmpty) {
      return users.where((element) {
        return element.name
            .toLowerCase()
            .contains(searchKeywoard.toLowerCase());
      }).toList();
    }
    return users.toList();
  }

  List<FeedbackModel> getFeedbacks() {
    print(searchType);
    if (searchType == SearchType.feedback && searchKeywoard.isNotEmpty) {
      return feedbacks.where((element) {
        return element.name
            .toLowerCase()
            .contains(searchKeywoard.toLowerCase());
      }).toList();
    }
    return feedbacks.toList();
  }

  List<SimpleVisaModel> getListApplication() {
    if (searchType == SearchType.application && searchKeywoard.isNotEmpty) {
      final filtered = application.where((element) {
        if (element.userName != null) {
          return element.userName!
              .toLowerCase()
              .contains(searchKeywoard.toLowerCase());
        }
        return false;
      }).toList();

      log("TOTAL + ${filtered.length}");

      return filtered;
    }
    log("TOTAL + ${application.length}");
    return application.toList();
  }

  List<ContactUsModel> getContactUs() {
    if (searchType == SearchType.contactUse && searchKeywoard.isNotEmpty) {
      return contacts.where((element) {
        return element.name
            .toLowerCase()
            .contains(searchKeywoard.toLowerCase());
      }).toList();
    }
    return contacts.toList();
  }
}
