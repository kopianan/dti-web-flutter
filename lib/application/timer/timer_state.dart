part of 'timer_cubit.dart';

@freezed
class TimerState with _$TimerState {
  const factory TimerState({Timer? timer}) = _TimerState;
  factory TimerState.initial() => TimerState(timer: null);
}
