import 'package:freezed_annotation/freezed_annotation.dart';
part 'chart_model.freezed.dart';

@freezed
class ChartModel with _$ChartModel {
  const factory ChartModel({
    required int time,
    double? open,
    double? high,
    double? low,
    double? close,
  }) = _ChartModel;

  factory  ChartModel.fromList(List<dynamic> list){
    return ChartModel(
      time: list[0] as int,
      open: (list[1] as num)?.toDouble(),
      high: (list[2] as num)?.toDouble(),
      low: (list[3]as num)?.toDouble(),
      close: (list[4] as num)?.toDouble(),
    );

  }




}
