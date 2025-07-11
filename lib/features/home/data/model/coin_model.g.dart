// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoinModelImpl _$$CoinModelImplFromJson(Map<String, dynamic> json) =>
    _$CoinModelImpl(
      id: json['id'] as String,
      symbol: json['symbol'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      currentPrice: (json['current_price'] as num).toDouble(),
      totalVolume: (json['total_volume'] as num).toDouble(),
      high24H: (json['high_24h'] as num).toDouble(),
      low24H: (json['low_24h'] as num).toDouble(),
      priceChange24H: (json['price_change_24h'] as num).toDouble(),
      marketCapChangePercentage24H:
          (json['market_cap_change_percentage_24h'] as num).toDouble(),
      sparklineIn7D: SparklineIn7D.fromJson(
          json['sparkline_in_7d'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoinModelImplToJson(_$CoinModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'symbol': instance.symbol,
      'name': instance.name,
      'image': instance.image,
      'current_price': instance.currentPrice,
      'total_volume': instance.totalVolume,
      'high_24h': instance.high24H,
      'low_24h': instance.low24H,
      'price_change_24h': instance.priceChange24H,
      'market_cap_change_percentage_24h': instance.marketCapChangePercentage24H,
      'sparkline_in_7d': instance.sparklineIn7D,
    };

_$SparklineIn7DImpl _$$SparklineIn7DImplFromJson(Map<String, dynamic> json) =>
    _$SparklineIn7DImpl(
      price: (json['price'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$SparklineIn7DImplToJson(_$SparklineIn7DImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
    };
