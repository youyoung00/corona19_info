// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeState _$$_HomeStateFromJson(Map<String, dynamic> json) => _$_HomeState(
      (json['info'] as List<dynamic>)
          .map((e) => Info.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['mainInfo'] as List<dynamic>)
          .map((e) => MainInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['isLoading'] as bool,
    );

Map<String, dynamic> _$$_HomeStateToJson(_$_HomeState instance) =>
    <String, dynamic>{
      'info': instance.info,
      'mainInfo': instance.mainInfo,
      'isLoading': instance.isLoading,
    };
