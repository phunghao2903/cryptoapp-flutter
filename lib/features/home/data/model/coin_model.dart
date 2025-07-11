// import 'dart:convert';
// import 'package:chart_sparkline/chart_sparkline.dart';

// List<CoinModel> coinModelFromJson(String str) => List<CoinModel>.from(json.decode(str).map((x) => CoinModel.fromJson(x)));

// String coinModelToJson(List<CoinModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// class CoinModel {
//     String id;
//     String symbol;
//     String name;
//     String image;
//     double currentPrice;
//     double totalVolume;
//     double high24H;
//     double low24H;
//     double priceChange24H;
//     double marketCapChangePercentage24H;
//     SparklineIn7D sparklineIn7D;

//     CoinModel({
//         required this.id,
//         required this.symbol,
//         required this.name,
//         required this.image,
//         required this.currentPrice,
//         required this.totalVolume,
//         required this.high24H,
//         required this.low24H,
//         required this.priceChange24H,
//         required this.marketCapChangePercentage24H,
//         required this.sparklineIn7D,

//     });

//     factory CoinModel.fromJson(Map<String, dynamic> json) => CoinModel(
//         id: json["id"],
//         symbol: json["symbol"],
//         name: json["name"],
//         image: json["image"],
//         currentPrice: json["current_price"].toDouble(),
//         totalVolume: json["total_volume"].toDouble(),
//         high24H: json["high_24h"].toDouble(),
//         low24H: json["low_24h"].toDouble(),
//         priceChange24H: json["price_change_24h"]?.toDouble(),
//         marketCapChangePercentage24H: json["market_cap_change_percentage_24h"]?.toDouble(),
//         sparklineIn7D: SparklineIn7D.fromJson(json["sparkline_in_7d"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "id": id,
//         "symbol": symbol,
//         "name": name,
//         "image": image,
//         "current_price": currentPrice,
//         "total_volume": totalVolume,
//         "high_24h": high24H,
//         "low_24h": low24H,
//         "price_change_24h": priceChange24H,
//         "market_cap_change_percentage_24h": marketCapChangePercentage24H,
//         "sparkline_in_7d": sparklineIn7D.toJson(),

//     };
// }

// class SparklineIn7D {
//     SparklineIn7D({
//         required this.price,
//     });

//     List<double> price;

//     factory SparklineIn7D.fromJson(Map<String, dynamic> json) => SparklineIn7D(
//         price: List<double>.from(json["price"].map((x) => x?.toDouble())),
//     );

//     Map<String, dynamic> toJson() => {
//         "price": List<dynamic>.from(price.map((x) => x)),
//     };
// }

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:chart_sparkline/chart_sparkline.dart';
part 'coin_model.freezed.dart';
part 'coin_model.g.dart';

@freezed
class CoinModel with _$CoinModel {
  const factory CoinModel({
    required String id,
    required String symbol,
    required String name,
    required String image,
    @JsonKey(name: 'current_price') required double currentPrice,
    @JsonKey(name: 'total_volume') required double totalVolume,
    @JsonKey(name: 'high_24h') required double high24H,
    @JsonKey(name: 'low_24h') required double low24H,
    @JsonKey(name: 'price_change_24h') required double priceChange24H,
    @JsonKey(name: 'market_cap_change_percentage_24h')
    required double marketCapChangePercentage24H,
    @JsonKey(name: 'sparkline_in_7d') required SparklineIn7D sparklineIn7D,
  }) = _CoinModel;

  factory CoinModel.fromJson(Map<String, dynamic> json) =>
      _$CoinModelFromJson(json);
}

@freezed
class SparklineIn7D with _$SparklineIn7D {
  const factory SparklineIn7D({required List<double> price}) = _SparklineIn7D;

  factory SparklineIn7D.fromJson(Map<String, dynamic> json) =>
      _$SparklineIn7DFromJson(json);
}
