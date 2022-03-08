import 'package:freezed_annotation/freezed_annotation.dart';

part 'info.freezed.dart';
part 'info.g.dart';

@freezed
class Info with _$Info {
  factory Info({
    required String countryNm,
    required int totalCnt,
    required int recCnt,
    required int deathCnt,
    required int isolCnt,
    required int qurRate,
    required int incDec,
    required int incDecK,
    required int incDecF,
  }) = _Info;

  factory Info.fromJson(Map<String, dynamic> json) => _$InfoFromJson(json);
}
