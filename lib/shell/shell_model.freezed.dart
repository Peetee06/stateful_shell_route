// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shell_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShellModel {
  int get selectedBottomTabIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShellModelCopyWith<ShellModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShellModelCopyWith<$Res> {
  factory $ShellModelCopyWith(
          ShellModel value, $Res Function(ShellModel) then) =
      _$ShellModelCopyWithImpl<$Res, ShellModel>;
  @useResult
  $Res call({int selectedBottomTabIndex});
}

/// @nodoc
class _$ShellModelCopyWithImpl<$Res, $Val extends ShellModel>
    implements $ShellModelCopyWith<$Res> {
  _$ShellModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedBottomTabIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedBottomTabIndex: null == selectedBottomTabIndex
          ? _value.selectedBottomTabIndex
          : selectedBottomTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShellModelImplCopyWith<$Res>
    implements $ShellModelCopyWith<$Res> {
  factory _$$ShellModelImplCopyWith(
          _$ShellModelImpl value, $Res Function(_$ShellModelImpl) then) =
      __$$ShellModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedBottomTabIndex});
}

/// @nodoc
class __$$ShellModelImplCopyWithImpl<$Res>
    extends _$ShellModelCopyWithImpl<$Res, _$ShellModelImpl>
    implements _$$ShellModelImplCopyWith<$Res> {
  __$$ShellModelImplCopyWithImpl(
      _$ShellModelImpl _value, $Res Function(_$ShellModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedBottomTabIndex = null,
  }) {
    return _then(_$ShellModelImpl(
      selectedBottomTabIndex: null == selectedBottomTabIndex
          ? _value.selectedBottomTabIndex
          : selectedBottomTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ShellModelImpl implements _ShellModel {
  const _$ShellModelImpl({required this.selectedBottomTabIndex});

  @override
  final int selectedBottomTabIndex;

  @override
  String toString() {
    return 'ShellModel(selectedBottomTabIndex: $selectedBottomTabIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShellModelImpl &&
            (identical(other.selectedBottomTabIndex, selectedBottomTabIndex) ||
                other.selectedBottomTabIndex == selectedBottomTabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedBottomTabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShellModelImplCopyWith<_$ShellModelImpl> get copyWith =>
      __$$ShellModelImplCopyWithImpl<_$ShellModelImpl>(this, _$identity);
}

abstract class _ShellModel implements ShellModel {
  const factory _ShellModel({required final int selectedBottomTabIndex}) =
      _$ShellModelImpl;

  @override
  int get selectedBottomTabIndex;
  @override
  @JsonKey(ignore: true)
  _$$ShellModelImplCopyWith<_$ShellModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
