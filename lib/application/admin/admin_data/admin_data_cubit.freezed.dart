// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_data_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminDataState {
  List<SimpleVisaModel> get application => throw _privateConstructorUsedError;
  List<ContactUsModel> get contacts => throw _privateConstructorUsedError;
  List<CustomerModel> get users => throw _privateConstructorUsedError;
  List<FeedbackModel> get feedbacks => throw _privateConstructorUsedError;
  SearchType get searchType => throw _privateConstructorUsedError;
  String get searchKeywoard => throw _privateConstructorUsedError;
  List<ChartFilterModel> get usersChartFilter =>
      throw _privateConstructorUsedError;
  List<ChartFilterModel> get appsChartFilter =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdminDataStateCopyWith<AdminDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminDataStateCopyWith<$Res> {
  factory $AdminDataStateCopyWith(
          AdminDataState value, $Res Function(AdminDataState) then) =
      _$AdminDataStateCopyWithImpl<$Res, AdminDataState>;
  @useResult
  $Res call(
      {List<SimpleVisaModel> application,
      List<ContactUsModel> contacts,
      List<CustomerModel> users,
      List<FeedbackModel> feedbacks,
      SearchType searchType,
      String searchKeywoard,
      List<ChartFilterModel> usersChartFilter,
      List<ChartFilterModel> appsChartFilter});
}

/// @nodoc
class _$AdminDataStateCopyWithImpl<$Res, $Val extends AdminDataState>
    implements $AdminDataStateCopyWith<$Res> {
  _$AdminDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? application = null,
    Object? contacts = null,
    Object? users = null,
    Object? feedbacks = null,
    Object? searchType = null,
    Object? searchKeywoard = null,
    Object? usersChartFilter = null,
    Object? appsChartFilter = null,
  }) {
    return _then(_value.copyWith(
      application: null == application
          ? _value.application
          : application // ignore: cast_nullable_to_non_nullable
              as List<SimpleVisaModel>,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactUsModel>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<CustomerModel>,
      feedbacks: null == feedbacks
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<FeedbackModel>,
      searchType: null == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as SearchType,
      searchKeywoard: null == searchKeywoard
          ? _value.searchKeywoard
          : searchKeywoard // ignore: cast_nullable_to_non_nullable
              as String,
      usersChartFilter: null == usersChartFilter
          ? _value.usersChartFilter
          : usersChartFilter // ignore: cast_nullable_to_non_nullable
              as List<ChartFilterModel>,
      appsChartFilter: null == appsChartFilter
          ? _value.appsChartFilter
          : appsChartFilter // ignore: cast_nullable_to_non_nullable
              as List<ChartFilterModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminDataStateImplCopyWith<$Res>
    implements $AdminDataStateCopyWith<$Res> {
  factory _$$AdminDataStateImplCopyWith(_$AdminDataStateImpl value,
          $Res Function(_$AdminDataStateImpl) then) =
      __$$AdminDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SimpleVisaModel> application,
      List<ContactUsModel> contacts,
      List<CustomerModel> users,
      List<FeedbackModel> feedbacks,
      SearchType searchType,
      String searchKeywoard,
      List<ChartFilterModel> usersChartFilter,
      List<ChartFilterModel> appsChartFilter});
}

/// @nodoc
class __$$AdminDataStateImplCopyWithImpl<$Res>
    extends _$AdminDataStateCopyWithImpl<$Res, _$AdminDataStateImpl>
    implements _$$AdminDataStateImplCopyWith<$Res> {
  __$$AdminDataStateImplCopyWithImpl(
      _$AdminDataStateImpl _value, $Res Function(_$AdminDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? application = null,
    Object? contacts = null,
    Object? users = null,
    Object? feedbacks = null,
    Object? searchType = null,
    Object? searchKeywoard = null,
    Object? usersChartFilter = null,
    Object? appsChartFilter = null,
  }) {
    return _then(_$AdminDataStateImpl(
      application: null == application
          ? _value.application
          : application // ignore: cast_nullable_to_non_nullable
              as List<SimpleVisaModel>,
      contacts: null == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactUsModel>,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<CustomerModel>,
      feedbacks: null == feedbacks
          ? _value.feedbacks
          : feedbacks // ignore: cast_nullable_to_non_nullable
              as List<FeedbackModel>,
      searchType: null == searchType
          ? _value.searchType
          : searchType // ignore: cast_nullable_to_non_nullable
              as SearchType,
      searchKeywoard: null == searchKeywoard
          ? _value.searchKeywoard
          : searchKeywoard // ignore: cast_nullable_to_non_nullable
              as String,
      usersChartFilter: null == usersChartFilter
          ? _value.usersChartFilter
          : usersChartFilter // ignore: cast_nullable_to_non_nullable
              as List<ChartFilterModel>,
      appsChartFilter: null == appsChartFilter
          ? _value.appsChartFilter
          : appsChartFilter // ignore: cast_nullable_to_non_nullable
              as List<ChartFilterModel>,
    ));
  }
}

/// @nodoc

class _$AdminDataStateImpl extends _AdminDataState {
  const _$AdminDataStateImpl(
      {this.application = const [],
      this.contacts = const [],
      this.users = const [],
      this.feedbacks = const [],
      this.searchType = SearchType.application,
      this.searchKeywoard = "",
      required this.usersChartFilter,
      required this.appsChartFilter})
      : super._();

  @override
  @JsonKey()
  final List<SimpleVisaModel> application;
  @override
  @JsonKey()
  final List<ContactUsModel> contacts;
  @override
  @JsonKey()
  final List<CustomerModel> users;
  @override
  @JsonKey()
  final List<FeedbackModel> feedbacks;
  @override
  @JsonKey()
  final SearchType searchType;
  @override
  @JsonKey()
  final String searchKeywoard;
  @override
  final List<ChartFilterModel> usersChartFilter;
  @override
  final List<ChartFilterModel> appsChartFilter;

  @override
  String toString() {
    return 'AdminDataState(application: $application, contacts: $contacts, users: $users, feedbacks: $feedbacks, searchType: $searchType, searchKeywoard: $searchKeywoard, usersChartFilter: $usersChartFilter, appsChartFilter: $appsChartFilter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminDataStateImpl &&
            const DeepCollectionEquality()
                .equals(other.application, application) &&
            const DeepCollectionEquality().equals(other.contacts, contacts) &&
            const DeepCollectionEquality().equals(other.users, users) &&
            const DeepCollectionEquality().equals(other.feedbacks, feedbacks) &&
            (identical(other.searchType, searchType) ||
                other.searchType == searchType) &&
            (identical(other.searchKeywoard, searchKeywoard) ||
                other.searchKeywoard == searchKeywoard) &&
            const DeepCollectionEquality()
                .equals(other.usersChartFilter, usersChartFilter) &&
            const DeepCollectionEquality()
                .equals(other.appsChartFilter, appsChartFilter));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(application),
      const DeepCollectionEquality().hash(contacts),
      const DeepCollectionEquality().hash(users),
      const DeepCollectionEquality().hash(feedbacks),
      searchType,
      searchKeywoard,
      const DeepCollectionEquality().hash(usersChartFilter),
      const DeepCollectionEquality().hash(appsChartFilter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminDataStateImplCopyWith<_$AdminDataStateImpl> get copyWith =>
      __$$AdminDataStateImplCopyWithImpl<_$AdminDataStateImpl>(
          this, _$identity);
}

abstract class _AdminDataState extends AdminDataState {
  const factory _AdminDataState(
          {final List<SimpleVisaModel> application,
          final List<ContactUsModel> contacts,
          final List<CustomerModel> users,
          final List<FeedbackModel> feedbacks,
          final SearchType searchType,
          final String searchKeywoard,
          required final List<ChartFilterModel> usersChartFilter,
          required final List<ChartFilterModel> appsChartFilter}) =
      _$AdminDataStateImpl;
  const _AdminDataState._() : super._();

  @override
  List<SimpleVisaModel> get application;
  @override
  List<ContactUsModel> get contacts;
  @override
  List<CustomerModel> get users;
  @override
  List<FeedbackModel> get feedbacks;
  @override
  SearchType get searchType;
  @override
  String get searchKeywoard;
  @override
  List<ChartFilterModel> get usersChartFilter;
  @override
  List<ChartFilterModel> get appsChartFilter;
  @override
  @JsonKey(ignore: true)
  _$$AdminDataStateImplCopyWith<_$AdminDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
