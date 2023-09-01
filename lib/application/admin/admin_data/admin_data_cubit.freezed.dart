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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AdminDataState {
  List<SimpleVisaModel> get application => throw _privateConstructorUsedError;
  List<ContactUsModel> get contacts => throw _privateConstructorUsedError;
  List<CustomerModel> get users => throw _privateConstructorUsedError;
  List<FeedbackModel> get feedbacks => throw _privateConstructorUsedError;
  SearchType get searchType => throw _privateConstructorUsedError;
  String get searchKeywoard => throw _privateConstructorUsedError;

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
      String searchKeywoard});
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AdminDataStateCopyWith<$Res>
    implements $AdminDataStateCopyWith<$Res> {
  factory _$$_AdminDataStateCopyWith(
          _$_AdminDataState value, $Res Function(_$_AdminDataState) then) =
      __$$_AdminDataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SimpleVisaModel> application,
      List<ContactUsModel> contacts,
      List<CustomerModel> users,
      List<FeedbackModel> feedbacks,
      SearchType searchType,
      String searchKeywoard});
}

/// @nodoc
class __$$_AdminDataStateCopyWithImpl<$Res>
    extends _$AdminDataStateCopyWithImpl<$Res, _$_AdminDataState>
    implements _$$_AdminDataStateCopyWith<$Res> {
  __$$_AdminDataStateCopyWithImpl(
      _$_AdminDataState _value, $Res Function(_$_AdminDataState) _then)
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
  }) {
    return _then(_$_AdminDataState(
      application: null == application
          ? _value._application
          : application // ignore: cast_nullable_to_non_nullable
              as List<SimpleVisaModel>,
      contacts: null == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactUsModel>,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<CustomerModel>,
      feedbacks: null == feedbacks
          ? _value._feedbacks
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
    ));
  }
}

/// @nodoc

class _$_AdminDataState extends _AdminDataState {
  const _$_AdminDataState(
      {final List<SimpleVisaModel> application = const [],
      final List<ContactUsModel> contacts = const [],
      final List<CustomerModel> users = const [],
      final List<FeedbackModel> feedbacks = const [],
      this.searchType = SearchType.application,
      this.searchKeywoard = ""})
      : _application = application,
        _contacts = contacts,
        _users = users,
        _feedbacks = feedbacks,
        super._();

  final List<SimpleVisaModel> _application;
  @override
  @JsonKey()
  List<SimpleVisaModel> get application {
    if (_application is EqualUnmodifiableListView) return _application;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_application);
  }

  final List<ContactUsModel> _contacts;
  @override
  @JsonKey()
  List<ContactUsModel> get contacts {
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contacts);
  }

  final List<CustomerModel> _users;
  @override
  @JsonKey()
  List<CustomerModel> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  final List<FeedbackModel> _feedbacks;
  @override
  @JsonKey()
  List<FeedbackModel> get feedbacks {
    if (_feedbacks is EqualUnmodifiableListView) return _feedbacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_feedbacks);
  }

  @override
  @JsonKey()
  final SearchType searchType;
  @override
  @JsonKey()
  final String searchKeywoard;

  @override
  String toString() {
    return 'AdminDataState(application: $application, contacts: $contacts, users: $users, feedbacks: $feedbacks, searchType: $searchType, searchKeywoard: $searchKeywoard)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AdminDataState &&
            const DeepCollectionEquality()
                .equals(other._application, _application) &&
            const DeepCollectionEquality().equals(other._contacts, _contacts) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality()
                .equals(other._feedbacks, _feedbacks) &&
            (identical(other.searchType, searchType) ||
                other.searchType == searchType) &&
            (identical(other.searchKeywoard, searchKeywoard) ||
                other.searchKeywoard == searchKeywoard));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_application),
      const DeepCollectionEquality().hash(_contacts),
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_feedbacks),
      searchType,
      searchKeywoard);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AdminDataStateCopyWith<_$_AdminDataState> get copyWith =>
      __$$_AdminDataStateCopyWithImpl<_$_AdminDataState>(this, _$identity);
}

abstract class _AdminDataState extends AdminDataState {
  const factory _AdminDataState(
      {final List<SimpleVisaModel> application,
      final List<ContactUsModel> contacts,
      final List<CustomerModel> users,
      final List<FeedbackModel> feedbacks,
      final SearchType searchType,
      final String searchKeywoard}) = _$_AdminDataState;
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
  @JsonKey(ignore: true)
  _$$_AdminDataStateCopyWith<_$_AdminDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
