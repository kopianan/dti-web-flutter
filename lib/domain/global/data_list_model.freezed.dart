// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataListModel {
  SimpleVisaModel get bodyData => throw _privateConstructorUsedError;
  set bodyData(SimpleVisaModel value) => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;
  set selected(bool value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataListModelCopyWith<DataListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataListModelCopyWith<$Res> {
  factory $DataListModelCopyWith(
          DataListModel value, $Res Function(DataListModel) then) =
      _$DataListModelCopyWithImpl<$Res, DataListModel>;
  @useResult
  $Res call({SimpleVisaModel bodyData, bool selected});

  $SimpleVisaModelCopyWith<$Res> get bodyData;
}

/// @nodoc
class _$DataListModelCopyWithImpl<$Res, $Val extends DataListModel>
    implements $DataListModelCopyWith<$Res> {
  _$DataListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodyData = null,
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      bodyData: null == bodyData
          ? _value.bodyData
          : bodyData // ignore: cast_nullable_to_non_nullable
              as SimpleVisaModel,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SimpleVisaModelCopyWith<$Res> get bodyData {
    return $SimpleVisaModelCopyWith<$Res>(_value.bodyData, (value) {
      return _then(_value.copyWith(bodyData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataListModelImplCopyWith<$Res>
    implements $DataListModelCopyWith<$Res> {
  factory _$$DataListModelImplCopyWith(
          _$DataListModelImpl value, $Res Function(_$DataListModelImpl) then) =
      __$$DataListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SimpleVisaModel bodyData, bool selected});

  @override
  $SimpleVisaModelCopyWith<$Res> get bodyData;
}

/// @nodoc
class __$$DataListModelImplCopyWithImpl<$Res>
    extends _$DataListModelCopyWithImpl<$Res, _$DataListModelImpl>
    implements _$$DataListModelImplCopyWith<$Res> {
  __$$DataListModelImplCopyWithImpl(
      _$DataListModelImpl _value, $Res Function(_$DataListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodyData = null,
    Object? selected = null,
  }) {
    return _then(_$DataListModelImpl(
      bodyData: null == bodyData
          ? _value.bodyData
          : bodyData // ignore: cast_nullable_to_non_nullable
              as SimpleVisaModel,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DataListModelImpl implements _DataListModel {
  _$DataListModelImpl({required this.bodyData, this.selected = false});

  @override
  SimpleVisaModel bodyData;
  @override
  @JsonKey()
  bool selected;

  @override
  String toString() {
    return 'DataListModel(bodyData: $bodyData, selected: $selected)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataListModelImplCopyWith<_$DataListModelImpl> get copyWith =>
      __$$DataListModelImplCopyWithImpl<_$DataListModelImpl>(this, _$identity);
}

abstract class _DataListModel implements DataListModel {
  factory _DataListModel({required SimpleVisaModel bodyData, bool selected}) =
      _$DataListModelImpl;

  @override
  SimpleVisaModel get bodyData;
  set bodyData(SimpleVisaModel value);
  @override
  bool get selected;
  set selected(bool value);
  @override
  @JsonKey(ignore: true)
  _$$DataListModelImplCopyWith<_$DataListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
