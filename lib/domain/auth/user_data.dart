import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
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
    int? selfReferralCodeTotal,
    String? createdAt,
    String? usedReferralCode,
    int? totalVisa,
    String? countryCode,
    String? userReferral,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
