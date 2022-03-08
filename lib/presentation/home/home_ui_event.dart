import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_ui_event.freezed.dart';

@freezed
abstract class HomeUiEvent<T> with _$HomeUiEvent<T> {
  const factory HomeUiEvent.snackBar(String message) = SnackBar;
}
