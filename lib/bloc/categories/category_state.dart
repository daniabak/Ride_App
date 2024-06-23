part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.loading() = _Loading;
  const factory CategoryState.loaded(
      List<CategoryModel> categories) = _Loaded;
  const factory CategoryState.error() = _Error;

}
