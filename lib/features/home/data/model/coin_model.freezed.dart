// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoinModel _$CoinModelFromJson(Map<String, dynamic> json) {
  return _CoinModel.fromJson(json);
}

/// @nodoc
mixin _$CoinModel {
  String get id => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price')
  double get currentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_volume')
  double get totalVolume => throw _privateConstructorUsedError;
  @JsonKey(name: 'high_24h')
  double get high24H => throw _privateConstructorUsedError;
  @JsonKey(name: 'low_24h')
  double get low24H => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_change_24h')
  double get priceChange24H => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_cap_change_percentage_24h')
  double get marketCapChangePercentage24H => throw _privateConstructorUsedError;
  @JsonKey(name: 'sparkline_in_7d')
  SparklineIn7D get sparklineIn7D => throw _privateConstructorUsedError;

  /// Serializes this CoinModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoinModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoinModelCopyWith<CoinModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinModelCopyWith<$Res> {
  factory $CoinModelCopyWith(CoinModel value, $Res Function(CoinModel) then) =
      _$CoinModelCopyWithImpl<$Res, CoinModel>;
  @useResult
  $Res call(
      {String id,
      String symbol,
      String name,
      String image,
      @JsonKey(name: 'current_price') double currentPrice,
      @JsonKey(name: 'total_volume') double totalVolume,
      @JsonKey(name: 'high_24h') double high24H,
      @JsonKey(name: 'low_24h') double low24H,
      @JsonKey(name: 'price_change_24h') double priceChange24H,
      @JsonKey(name: 'market_cap_change_percentage_24h')
      double marketCapChangePercentage24H,
      @JsonKey(name: 'sparkline_in_7d') SparklineIn7D sparklineIn7D});

  $SparklineIn7DCopyWith<$Res> get sparklineIn7D;
}

/// @nodoc
class _$CoinModelCopyWithImpl<$Res, $Val extends CoinModel>
    implements $CoinModelCopyWith<$Res> {
  _$CoinModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoinModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? image = null,
    Object? currentPrice = null,
    Object? totalVolume = null,
    Object? high24H = null,
    Object? low24H = null,
    Object? priceChange24H = null,
    Object? marketCapChangePercentage24H = null,
    Object? sparklineIn7D = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalVolume: null == totalVolume
          ? _value.totalVolume
          : totalVolume // ignore: cast_nullable_to_non_nullable
              as double,
      high24H: null == high24H
          ? _value.high24H
          : high24H // ignore: cast_nullable_to_non_nullable
              as double,
      low24H: null == low24H
          ? _value.low24H
          : low24H // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange24H: null == priceChange24H
          ? _value.priceChange24H
          : priceChange24H // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapChangePercentage24H: null == marketCapChangePercentage24H
          ? _value.marketCapChangePercentage24H
          : marketCapChangePercentage24H // ignore: cast_nullable_to_non_nullable
              as double,
      sparklineIn7D: null == sparklineIn7D
          ? _value.sparklineIn7D
          : sparklineIn7D // ignore: cast_nullable_to_non_nullable
              as SparklineIn7D,
    ) as $Val);
  }

  /// Create a copy of CoinModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SparklineIn7DCopyWith<$Res> get sparklineIn7D {
    return $SparklineIn7DCopyWith<$Res>(_value.sparklineIn7D, (value) {
      return _then(_value.copyWith(sparklineIn7D: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoinModelImplCopyWith<$Res>
    implements $CoinModelCopyWith<$Res> {
  factory _$$CoinModelImplCopyWith(
          _$CoinModelImpl value, $Res Function(_$CoinModelImpl) then) =
      __$$CoinModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String symbol,
      String name,
      String image,
      @JsonKey(name: 'current_price') double currentPrice,
      @JsonKey(name: 'total_volume') double totalVolume,
      @JsonKey(name: 'high_24h') double high24H,
      @JsonKey(name: 'low_24h') double low24H,
      @JsonKey(name: 'price_change_24h') double priceChange24H,
      @JsonKey(name: 'market_cap_change_percentage_24h')
      double marketCapChangePercentage24H,
      @JsonKey(name: 'sparkline_in_7d') SparklineIn7D sparklineIn7D});

  @override
  $SparklineIn7DCopyWith<$Res> get sparklineIn7D;
}

/// @nodoc
class __$$CoinModelImplCopyWithImpl<$Res>
    extends _$CoinModelCopyWithImpl<$Res, _$CoinModelImpl>
    implements _$$CoinModelImplCopyWith<$Res> {
  __$$CoinModelImplCopyWithImpl(
      _$CoinModelImpl _value, $Res Function(_$CoinModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoinModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? symbol = null,
    Object? name = null,
    Object? image = null,
    Object? currentPrice = null,
    Object? totalVolume = null,
    Object? high24H = null,
    Object? low24H = null,
    Object? priceChange24H = null,
    Object? marketCapChangePercentage24H = null,
    Object? sparklineIn7D = null,
  }) {
    return _then(_$CoinModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      totalVolume: null == totalVolume
          ? _value.totalVolume
          : totalVolume // ignore: cast_nullable_to_non_nullable
              as double,
      high24H: null == high24H
          ? _value.high24H
          : high24H // ignore: cast_nullable_to_non_nullable
              as double,
      low24H: null == low24H
          ? _value.low24H
          : low24H // ignore: cast_nullable_to_non_nullable
              as double,
      priceChange24H: null == priceChange24H
          ? _value.priceChange24H
          : priceChange24H // ignore: cast_nullable_to_non_nullable
              as double,
      marketCapChangePercentage24H: null == marketCapChangePercentage24H
          ? _value.marketCapChangePercentage24H
          : marketCapChangePercentage24H // ignore: cast_nullable_to_non_nullable
              as double,
      sparklineIn7D: null == sparklineIn7D
          ? _value.sparklineIn7D
          : sparklineIn7D // ignore: cast_nullable_to_non_nullable
              as SparklineIn7D,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinModelImpl implements _CoinModel {
  const _$CoinModelImpl(
      {required this.id,
      required this.symbol,
      required this.name,
      required this.image,
      @JsonKey(name: 'current_price') required this.currentPrice,
      @JsonKey(name: 'total_volume') required this.totalVolume,
      @JsonKey(name: 'high_24h') required this.high24H,
      @JsonKey(name: 'low_24h') required this.low24H,
      @JsonKey(name: 'price_change_24h') required this.priceChange24H,
      @JsonKey(name: 'market_cap_change_percentage_24h')
      required this.marketCapChangePercentage24H,
      @JsonKey(name: 'sparkline_in_7d') required this.sparklineIn7D});

  factory _$CoinModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinModelImplFromJson(json);

  @override
  final String id;
  @override
  final String symbol;
  @override
  final String name;
  @override
  final String image;
  @override
  @JsonKey(name: 'current_price')
  final double currentPrice;
  @override
  @JsonKey(name: 'total_volume')
  final double totalVolume;
  @override
  @JsonKey(name: 'high_24h')
  final double high24H;
  @override
  @JsonKey(name: 'low_24h')
  final double low24H;
  @override
  @JsonKey(name: 'price_change_24h')
  final double priceChange24H;
  @override
  @JsonKey(name: 'market_cap_change_percentage_24h')
  final double marketCapChangePercentage24H;
  @override
  @JsonKey(name: 'sparkline_in_7d')
  final SparklineIn7D sparklineIn7D;

  @override
  String toString() {
    return 'CoinModel(id: $id, symbol: $symbol, name: $name, image: $image, currentPrice: $currentPrice, totalVolume: $totalVolume, high24H: $high24H, low24H: $low24H, priceChange24H: $priceChange24H, marketCapChangePercentage24H: $marketCapChangePercentage24H, sparklineIn7D: $sparklineIn7D)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.totalVolume, totalVolume) ||
                other.totalVolume == totalVolume) &&
            (identical(other.high24H, high24H) || other.high24H == high24H) &&
            (identical(other.low24H, low24H) || other.low24H == low24H) &&
            (identical(other.priceChange24H, priceChange24H) ||
                other.priceChange24H == priceChange24H) &&
            (identical(other.marketCapChangePercentage24H,
                    marketCapChangePercentage24H) ||
                other.marketCapChangePercentage24H ==
                    marketCapChangePercentage24H) &&
            (identical(other.sparklineIn7D, sparklineIn7D) ||
                other.sparklineIn7D == sparklineIn7D));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      symbol,
      name,
      image,
      currentPrice,
      totalVolume,
      high24H,
      low24H,
      priceChange24H,
      marketCapChangePercentage24H,
      sparklineIn7D);

  /// Create a copy of CoinModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinModelImplCopyWith<_$CoinModelImpl> get copyWith =>
      __$$CoinModelImplCopyWithImpl<_$CoinModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinModelImplToJson(
      this,
    );
  }
}

abstract class _CoinModel implements CoinModel {
  const factory _CoinModel(
      {required final String id,
      required final String symbol,
      required final String name,
      required final String image,
      @JsonKey(name: 'current_price') required final double currentPrice,
      @JsonKey(name: 'total_volume') required final double totalVolume,
      @JsonKey(name: 'high_24h') required final double high24H,
      @JsonKey(name: 'low_24h') required final double low24H,
      @JsonKey(name: 'price_change_24h') required final double priceChange24H,
      @JsonKey(name: 'market_cap_change_percentage_24h')
      required final double marketCapChangePercentage24H,
      @JsonKey(name: 'sparkline_in_7d')
      required final SparklineIn7D sparklineIn7D}) = _$CoinModelImpl;

  factory _CoinModel.fromJson(Map<String, dynamic> json) =
      _$CoinModelImpl.fromJson;

  @override
  String get id;
  @override
  String get symbol;
  @override
  String get name;
  @override
  String get image;
  @override
  @JsonKey(name: 'current_price')
  double get currentPrice;
  @override
  @JsonKey(name: 'total_volume')
  double get totalVolume;
  @override
  @JsonKey(name: 'high_24h')
  double get high24H;
  @override
  @JsonKey(name: 'low_24h')
  double get low24H;
  @override
  @JsonKey(name: 'price_change_24h')
  double get priceChange24H;
  @override
  @JsonKey(name: 'market_cap_change_percentage_24h')
  double get marketCapChangePercentage24H;
  @override
  @JsonKey(name: 'sparkline_in_7d')
  SparklineIn7D get sparklineIn7D;

  /// Create a copy of CoinModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoinModelImplCopyWith<_$CoinModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SparklineIn7D _$SparklineIn7DFromJson(Map<String, dynamic> json) {
  return _SparklineIn7D.fromJson(json);
}

/// @nodoc
mixin _$SparklineIn7D {
  List<double> get price => throw _privateConstructorUsedError;

  /// Serializes this SparklineIn7D to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SparklineIn7D
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SparklineIn7DCopyWith<SparklineIn7D> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SparklineIn7DCopyWith<$Res> {
  factory $SparklineIn7DCopyWith(
          SparklineIn7D value, $Res Function(SparklineIn7D) then) =
      _$SparklineIn7DCopyWithImpl<$Res, SparklineIn7D>;
  @useResult
  $Res call({List<double> price});
}

/// @nodoc
class _$SparklineIn7DCopyWithImpl<$Res, $Val extends SparklineIn7D>
    implements $SparklineIn7DCopyWith<$Res> {
  _$SparklineIn7DCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SparklineIn7D
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SparklineIn7DImplCopyWith<$Res>
    implements $SparklineIn7DCopyWith<$Res> {
  factory _$$SparklineIn7DImplCopyWith(
          _$SparklineIn7DImpl value, $Res Function(_$SparklineIn7DImpl) then) =
      __$$SparklineIn7DImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<double> price});
}

/// @nodoc
class __$$SparklineIn7DImplCopyWithImpl<$Res>
    extends _$SparklineIn7DCopyWithImpl<$Res, _$SparklineIn7DImpl>
    implements _$$SparklineIn7DImplCopyWith<$Res> {
  __$$SparklineIn7DImplCopyWithImpl(
      _$SparklineIn7DImpl _value, $Res Function(_$SparklineIn7DImpl) _then)
      : super(_value, _then);

  /// Create a copy of SparklineIn7D
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
  }) {
    return _then(_$SparklineIn7DImpl(
      price: null == price
          ? _value._price
          : price // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SparklineIn7DImpl implements _SparklineIn7D {
  const _$SparklineIn7DImpl({required final List<double> price})
      : _price = price;

  factory _$SparklineIn7DImpl.fromJson(Map<String, dynamic> json) =>
      _$$SparklineIn7DImplFromJson(json);

  final List<double> _price;
  @override
  List<double> get price {
    if (_price is EqualUnmodifiableListView) return _price;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_price);
  }

  @override
  String toString() {
    return 'SparklineIn7D(price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SparklineIn7DImpl &&
            const DeepCollectionEquality().equals(other._price, _price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_price));

  /// Create a copy of SparklineIn7D
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SparklineIn7DImplCopyWith<_$SparklineIn7DImpl> get copyWith =>
      __$$SparklineIn7DImplCopyWithImpl<_$SparklineIn7DImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SparklineIn7DImplToJson(
      this,
    );
  }
}

abstract class _SparklineIn7D implements SparklineIn7D {
  const factory _SparklineIn7D({required final List<double> price}) =
      _$SparklineIn7DImpl;

  factory _SparklineIn7D.fromJson(Map<String, dynamic> json) =
      _$SparklineIn7DImpl.fromJson;

  @override
  List<double> get price;

  /// Create a copy of SparklineIn7D
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SparklineIn7DImplCopyWith<_$SparklineIn7DImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
