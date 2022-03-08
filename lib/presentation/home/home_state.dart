import 'package:corona19_info/domain/model/main_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/model/info.dart';

part 'home_state.freezed.dart';
part 'home_state.g.dart';

@freezed
class HomeState with _$HomeState {
  factory HomeState(
    List<Info> info,
    List<MainInfo> mainInfo,
    bool isLoading,
  ) = _HomeState;

  factory HomeState.fromJson(Map<String, dynamic> json) =>
      _$HomeStateFromJson(json);
}
