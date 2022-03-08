// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MainInfo _$$_MainInfoFromJson(Map<String, dynamic> json) => _$_MainInfo(
      apiName: json['apiName'] as String,
      updateTime: json['updateTime'] as String,
      dataSource: json['dataSource'] as String,
      resultCode: json['resultCode'] as String,
      resultMessage: json['resultMessage'] as String,
      isolDec: json['isolDec'] as String,
      recPcnt: (json['recPcnt'] as num).toDouble(),
      deathPcnt: (json['deathPcnt'] as num).toDouble(),
      topCountries: json['topCountries'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_MainInfoToJson(_$_MainInfo instance) =>
    <String, dynamic>{
      'apiName': instance.apiName,
      'updateTime': instance.updateTime,
      'dataSource': instance.dataSource,
      'resultCode': instance.resultCode,
      'resultMessage': instance.resultMessage,
      'isolDec': instance.isolDec,
      'recPcnt': instance.recPcnt,
      'deathPcnt': instance.deathPcnt,
      'topCountries': instance.topCountries,
    };
