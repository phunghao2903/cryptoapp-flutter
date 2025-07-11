// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChartModel {
  int get time => throw _privateConstructorUsedError;
  double? get open => throw _privateConstructorUsedError;
  double? get high => throw _privateConstructorUsedError;
  double? get low => throw _privateConstructorUsedError;
  double? get close => throw _privateConstructorUsedError;

  /// Create a copy of ChartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChartModelCopyWith<ChartModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartModelCopyWith<$Res> {
  factory $ChartModelCopyWith(
          ChartModel value, $Res Function(ChartModel) then) =
      _$ChartModelCopyWithImpl<$Res, ChartModel>;
  @useResult
  $Res call({int time, double? open, double? high, double? low, double? close});
}

/// @nodoc
class _$ChartModelCopyWithImpl<$Res, $Val extends ChartModel>
    implements $ChartModelCopyWith<$Res> {
  _$ChartModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? open = freezed,
    Object? high = freezed,
    Object? low = freezed,
    Object? close = freezed,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      open: freezed == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as double?,
      high: freezed == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double?,
      low: freezed == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double?,
      close: freezed == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChartModelImplCopyWith<$Res>
    implements $ChartModelCopyWith<$Res> {
  factory _$$ChartModelImplCopyWith(
          _$ChartModelImpl value, $Res Function(_$ChartModelImpl) then) =
      __$$ChartModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int time, double? open, double? high, double? low, double? close});
}

/// @nodoc
class __$$ChartModelImplCopyWithImpl<$Res>
    extends _$ChartModelCopyWithImpl<$Res, _$ChartModelImpl>
    implements _$$ChartModelImplCopyWith<$Res> {
  __$$ChartModelImplCopyWithImpl(
      _$ChartModelImpl _value, $Res Function(_$ChartModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChartModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? open = freezed,
    Object? high = freezed,
    Object? low = freezed,
    Object? close = freezed,
  }) {
    return _then(_$ChartModelImpl(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int,
      open: freezed == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as double?,
      high: freezed == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as double?,
      low: freezed == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as double?,
      close: freezed == close
          ? _value.close
          : close // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$ChartModelImpl implements _ChartModel {
  const _$ChartModelImpl(
      {required this.time, this.open, this.high, this.low, this.close});

  @override
  final int time;
  @override
  final double? open;
  @override
  final double? high;
  @override
  final double? low;
  @override
  final double? close;

  @override
  String toString() {
    return 'ChartModel(time: $time, open: $open, high: $high, low: $low, close: $close)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartModelImpl &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.open, open) || other.open == open) &&
            (identical(other.high, high) || other.high == high) &&
            (identical(other.low, low) || other.low == low) &&
            (identical(other.close, close) || other.close == close));
  }

  @override
  int get hashCode => Object.hash(runtimeType, time, open, high, low, close);

  /// Create a copy of ChartModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartModelImplCopyWith<_$ChartModelImpl> get copyWith =>
      __$$ChartModelImplCopyWithImpl<_$ChartModelImpl>(this, _$identity);
}

abstract class _ChartModel implements ChartModel {
  const factory _ChartModel(
      {required final int time,
      final double? open,
      final double? high,
      final double? low,
      final double? close}) = _$ChartModelImpl;

  @override
  int get time;
  @override
  double? get open;
  @override
  double? get high;
  @override
  double? get low;
  @override
  double? get close;

  /// Create a copy of ChartModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChartModelImplCopyWith<_$ChartModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
