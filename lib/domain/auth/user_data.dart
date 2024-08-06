import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  UserData._();
  factory UserData({
    bool? usedReferralCodeFlag,
    String? selfReferralCode,
    String? userId,
    String? mobileNumber,
    bool? outstandingAction,
    String? token,
    String? lastUpdatedDate,
    String? lastUpdatedBy,
    String? email,
    String? name,
    String? hubspotId,
    @Default(false) bool isAgent,
    int? selfReferralCodeTotal,
    String? createdAt,
    String? usedReferralCode,
    int? totalVisa,
    String? countryCode,
    String? userReferral,
  }) = _UserData;
  factory UserData.empty() => UserData();
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  bool adminOrAgent() {
    if (isAgent || email?.contains("@doortoid.com") == true) {
      return true;
    }
    return false;
  }

  bool isAdmin() {
    if (email?.contains("@doortoid.com") == true) {
      return true;
    }
    return false;
  }

  bool isUser() {
    if (email?.contains("@doortoid.com") == false && !isAgent) {
      return true;
    }
    return false;
  }
}
