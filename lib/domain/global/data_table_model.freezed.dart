// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_table_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataTableModel {
  List<Data?> get bodyData => throw _privateConstructorUsedError;
  bool get selected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataTableModelCopyWith<DataTableModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataTableModelCopyWith<$Res> {
  factory $DataTableModelCopyWith(
          DataTableModel value, $Res Function(DataTableModel) then) =
      _$DataTableModelCopyWithImpl<$Res, DataTableModel>;
  @useResult
  $Res call({List<Data?> bodyData, bool selected});
}

/// @nodoc
class _$DataTableModelCopyWithImpl<$Res, $Val extends DataTableModel>
    implements $DataTableModelCopyWith<$Res> {
  _$DataTableModelCopyWithImpl(this._value, this._then);

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
              as List<Data?>,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DataTableModelCopyWith<$Res>
    implements $DataTableModelCopyWith<$Res> {
  factory _$$_DataTableModelCopyWith(
          _$_DataTableModel value, $Res Function(_$_DataTableModel) then) =
      __$$_DataTableModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Data?> bodyData, bool selected});
}

/// @nodoc
class __$$_DataTableModelCopyWithImpl<$Res>
    extends _$DataTableModelCopyWithImpl<$Res, _$_DataTableModel>
    implements _$$_DataTableModelCopyWith<$Res> {
  __$$_DataTableModelCopyWithImpl(
      _$_DataTableModel _value, $Res Function(_$_DataTableModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bodyData = null,
    Object? selected = null,
  }) {
    return _then(_$_DataTableModel(
      bodyData: null == bodyData
          ? _value._bodyData
          : bodyData // ignore: cast_nullable_to_non_nullable
              as List<Data?>,
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DataTableModel implements _DataTableModel {
  _$_DataTableModel(
      {final List<Data?> bodyData = const [], this.selected = false})
      : _bodyData = bodyData;

  final List<Data?> _bodyData;
  @override
  @JsonKey()
  List<Data?> get bodyData {
    if (_bodyData is EqualUnmodifiableListView) return _bodyData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bodyData);
  }

  @override
  @JsonKey()
  final bool selected;

  @override
  String toString() {
    return 'DataTableModel(bodyData: $bodyData, selected: $selected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataTableModel &&
            const DeepCollectionEquality().equals(other._bodyData, _bodyData) &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_bodyData), selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataTableModelCopyWith<_$_DataTableModel> get copyWith =>
      __$$_DataTableModelCopyWithImpl<_$_DataTableModel>(this, _$identity);
}

abstract class _DataTableModel implements DataTableModel {
  factory _DataTableModel({final List<Data?> bodyData, final bool selected}) =
      _$_DataTableModel;

  @override
  List<Data?> get bodyData;
  @override
  bool get selected;
  @override
  @JsonKey(ignore: true)
  _$$_DataTableModelCopyWith<_$_DataTableModel> get copyWith =>
      throw _privateConstructorUsedError;
}
