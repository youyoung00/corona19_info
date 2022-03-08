import 'dart:async';

import 'package:corona19_info/domain/use_case/get_infos_use_case.dart';
import 'package:flutter/cupertino.dart';

import '../../data/data_source/result.dart';
import '../../domain/model/info.dart';
import '../../domain/model/main_info.dart';
import '../../domain/use_case/get_main_info_use_case.dart';
import 'home_state.dart';
import 'home_ui_event.dart';

class HomeViewModel with ChangeNotifier {
  final GetInfosUseCase _getInfosUseCase;
  final GetMainInfoUseCase _getMainInfoUseCase;

  final _eventController = StreamController<HomeUiEvent>();

  Stream<HomeUiEvent> get eventStream => _eventController.stream;

  HomeState _state = HomeState([], [], false);

  HomeState get state => _state;

  HomeViewModel(this._getInfosUseCase, this._getMainInfoUseCase);

  Future<void> fetchBody() async {
    _state = state.copyWith(isLoading: true);
    notifyListeners();
    final Result<List<Info>> bodyData = await _getInfosUseCase();
    final Result<List<MainInfo>> heardData = await _getMainInfoUseCase();

    bodyData.when(
      success: (info) {
        _state = state.copyWith(info: info);
        notifyListeners();
      },
      error: (message) {
        _eventController.add(
          HomeUiEvent.snackBar(message),
        );
      },
    );

    heardData.when(
      success: (mainInfo) {
        _state = state.copyWith(mainInfo: mainInfo);
        notifyListeners();
      },
      error: (message) {
        _eventController.add(
          HomeUiEvent.snackBar(message),
        );
      },
    );

    _state = state.copyWith(isLoading: false);
    notifyListeners();
  }
}
