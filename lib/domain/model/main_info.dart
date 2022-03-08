import 'package:freezed_annotation/freezed_annotation.dart';

part 'main_info.freezed.dart';
part 'main_info.g.dart';

@freezed
class MainInfo with _$MainInfo {
  factory MainInfo({
    required String apiName,
    required String updateTime,
    required String dataSource,
    required String resultCode,
    required String resultMessage,
    required String isolDec,
    required double recPcnt,
    required double deathPcnt,
    required Map<String, dynamic> topCountries,
  }) = _MainInfo;

  factory MainInfo.fromJson(Map<String, dynamic> json) =>
      _$MainInfoFromJson(json);
}
