part of 'other_cubit.dart';

@freezed
class OtherState with _$OtherState {
  const factory OtherState.initial() = _Initial;
  const factory OtherState.loading() = _Loading;
  const factory OtherState.error() = _Error;
  const factory OtherState.nullImage() = _NullImage;
  const factory OtherState.imageLocal(String url) = _ImageLocal;
  const factory OtherState.onGetImageUrl(String url) = _OnGetImageUrl;
}
