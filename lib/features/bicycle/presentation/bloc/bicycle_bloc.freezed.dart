// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bicycle_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BicycleEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategories,
    required TResult Function(String category) getBicyclesOfCategory,
    required TResult Function(int bicycleId) getBicycle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCategories,
    TResult? Function(String category)? getBicyclesOfCategory,
    TResult? Function(int bicycleId)? getBicycle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(String category)? getBicyclesOfCategory,
    TResult Function(int bicycleId)? getBicycle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetBicyclesByCategory value)
        getBicyclesOfCategory,
    required TResult Function(_GetBicycle value) getBicycle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetBicyclesByCategory value)? getBicyclesOfCategory,
    TResult? Function(_GetBicycle value)? getBicycle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetBicyclesByCategory value)? getBicyclesOfCategory,
    TResult Function(_GetBicycle value)? getBicycle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BicycleEventCopyWith<$Res> {
  factory $BicycleEventCopyWith(
          BicycleEvent value, $Res Function(BicycleEvent) then) =
      _$BicycleEventCopyWithImpl<$Res, BicycleEvent>;
}

/// @nodoc
class _$BicycleEventCopyWithImpl<$Res, $Val extends BicycleEvent>
    implements $BicycleEventCopyWith<$Res> {
  _$BicycleEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCategoriesImplCopyWith<$Res> {
  factory _$$GetCategoriesImplCopyWith(
          _$GetCategoriesImpl value, $Res Function(_$GetCategoriesImpl) then) =
      __$$GetCategoriesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCategoriesImplCopyWithImpl<$Res>
    extends _$BicycleEventCopyWithImpl<$Res, _$GetCategoriesImpl>
    implements _$$GetCategoriesImplCopyWith<$Res> {
  __$$GetCategoriesImplCopyWithImpl(
      _$GetCategoriesImpl _value, $Res Function(_$GetCategoriesImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCategoriesImpl implements _GetCategories {
  const _$GetCategoriesImpl();

  @override
  String toString() {
    return 'BicycleEvent.getCategories()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetCategoriesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategories,
    required TResult Function(String category) getBicyclesOfCategory,
    required TResult Function(int bicycleId) getBicycle,
  }) {
    return getCategories();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCategories,
    TResult? Function(String category)? getBicyclesOfCategory,
    TResult? Function(int bicycleId)? getBicycle,
  }) {
    return getCategories?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(String category)? getBicyclesOfCategory,
    TResult Function(int bicycleId)? getBicycle,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetBicyclesByCategory value)
        getBicyclesOfCategory,
    required TResult Function(_GetBicycle value) getBicycle,
  }) {
    return getCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetBicyclesByCategory value)? getBicyclesOfCategory,
    TResult? Function(_GetBicycle value)? getBicycle,
  }) {
    return getCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetBicyclesByCategory value)? getBicyclesOfCategory,
    TResult Function(_GetBicycle value)? getBicycle,
    required TResult orElse(),
  }) {
    if (getCategories != null) {
      return getCategories(this);
    }
    return orElse();
  }
}

abstract class _GetCategories implements BicycleEvent {
  const factory _GetCategories() = _$GetCategoriesImpl;
}

/// @nodoc
abstract class _$$GetBicyclesByCategoryImplCopyWith<$Res> {
  factory _$$GetBicyclesByCategoryImplCopyWith(
          _$GetBicyclesByCategoryImpl value,
          $Res Function(_$GetBicyclesByCategoryImpl) then) =
      __$$GetBicyclesByCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$GetBicyclesByCategoryImplCopyWithImpl<$Res>
    extends _$BicycleEventCopyWithImpl<$Res, _$GetBicyclesByCategoryImpl>
    implements _$$GetBicyclesByCategoryImplCopyWith<$Res> {
  __$$GetBicyclesByCategoryImplCopyWithImpl(_$GetBicyclesByCategoryImpl _value,
      $Res Function(_$GetBicyclesByCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$GetBicyclesByCategoryImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetBicyclesByCategoryImpl implements _GetBicyclesByCategory {
  const _$GetBicyclesByCategoryImpl(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'BicycleEvent.getBicyclesOfCategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBicyclesByCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBicyclesByCategoryImplCopyWith<_$GetBicyclesByCategoryImpl>
      get copyWith => __$$GetBicyclesByCategoryImplCopyWithImpl<
          _$GetBicyclesByCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategories,
    required TResult Function(String category) getBicyclesOfCategory,
    required TResult Function(int bicycleId) getBicycle,
  }) {
    return getBicyclesOfCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCategories,
    TResult? Function(String category)? getBicyclesOfCategory,
    TResult? Function(int bicycleId)? getBicycle,
  }) {
    return getBicyclesOfCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(String category)? getBicyclesOfCategory,
    TResult Function(int bicycleId)? getBicycle,
    required TResult orElse(),
  }) {
    if (getBicyclesOfCategory != null) {
      return getBicyclesOfCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetBicyclesByCategory value)
        getBicyclesOfCategory,
    required TResult Function(_GetBicycle value) getBicycle,
  }) {
    return getBicyclesOfCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetBicyclesByCategory value)? getBicyclesOfCategory,
    TResult? Function(_GetBicycle value)? getBicycle,
  }) {
    return getBicyclesOfCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetBicyclesByCategory value)? getBicyclesOfCategory,
    TResult Function(_GetBicycle value)? getBicycle,
    required TResult orElse(),
  }) {
    if (getBicyclesOfCategory != null) {
      return getBicyclesOfCategory(this);
    }
    return orElse();
  }
}

abstract class _GetBicyclesByCategory implements BicycleEvent {
  const factory _GetBicyclesByCategory(final String category) =
      _$GetBicyclesByCategoryImpl;

  String get category;
  @JsonKey(ignore: true)
  _$$GetBicyclesByCategoryImplCopyWith<_$GetBicyclesByCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBicycleImplCopyWith<$Res> {
  factory _$$GetBicycleImplCopyWith(
          _$GetBicycleImpl value, $Res Function(_$GetBicycleImpl) then) =
      __$$GetBicycleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int bicycleId});
}

/// @nodoc
class __$$GetBicycleImplCopyWithImpl<$Res>
    extends _$BicycleEventCopyWithImpl<$Res, _$GetBicycleImpl>
    implements _$$GetBicycleImplCopyWith<$Res> {
  __$$GetBicycleImplCopyWithImpl(
      _$GetBicycleImpl _value, $Res Function(_$GetBicycleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bicycleId = null,
  }) {
    return _then(_$GetBicycleImpl(
      null == bicycleId
          ? _value.bicycleId
          : bicycleId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetBicycleImpl implements _GetBicycle {
  const _$GetBicycleImpl(this.bicycleId);

  @override
  final int bicycleId;

  @override
  String toString() {
    return 'BicycleEvent.getBicycle(bicycleId: $bicycleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBicycleImpl &&
            (identical(other.bicycleId, bicycleId) ||
                other.bicycleId == bicycleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bicycleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBicycleImplCopyWith<_$GetBicycleImpl> get copyWith =>
      __$$GetBicycleImplCopyWithImpl<_$GetBicycleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getCategories,
    required TResult Function(String category) getBicyclesOfCategory,
    required TResult Function(int bicycleId) getBicycle,
  }) {
    return getBicycle(bicycleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getCategories,
    TResult? Function(String category)? getBicyclesOfCategory,
    TResult? Function(int bicycleId)? getBicycle,
  }) {
    return getBicycle?.call(bicycleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getCategories,
    TResult Function(String category)? getBicyclesOfCategory,
    TResult Function(int bicycleId)? getBicycle,
    required TResult orElse(),
  }) {
    if (getBicycle != null) {
      return getBicycle(bicycleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetCategories value) getCategories,
    required TResult Function(_GetBicyclesByCategory value)
        getBicyclesOfCategory,
    required TResult Function(_GetBicycle value) getBicycle,
  }) {
    return getBicycle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetCategories value)? getCategories,
    TResult? Function(_GetBicyclesByCategory value)? getBicyclesOfCategory,
    TResult? Function(_GetBicycle value)? getBicycle,
  }) {
    return getBicycle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetCategories value)? getCategories,
    TResult Function(_GetBicyclesByCategory value)? getBicyclesOfCategory,
    TResult Function(_GetBicycle value)? getBicycle,
    required TResult orElse(),
  }) {
    if (getBicycle != null) {
      return getBicycle(this);
    }
    return orElse();
  }
}

abstract class _GetBicycle implements BicycleEvent {
  const factory _GetBicycle(final int bicycleId) = _$GetBicycleImpl;

  int get bicycleId;
  @JsonKey(ignore: true)
  _$$GetBicycleImplCopyWith<_$GetBicycleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BicycleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaing,
    required TResult Function(List<String> categories) categoriesLoaded,
    required TResult Function(List<Bicycle> bicycles) bicyclesLoaded,
    required TResult Function(Bicycle bicycle) bicycleLoaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaing,
    TResult? Function(List<String> categories)? categoriesLoaded,
    TResult? Function(List<Bicycle> bicycles)? bicyclesLoaded,
    TResult? Function(Bicycle bicycle)? bicycleLoaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaing,
    TResult Function(List<String> categories)? categoriesLoaded,
    TResult Function(List<Bicycle> bicycles)? bicyclesLoaded,
    TResult Function(Bicycle bicycle)? bicycleLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loaing,
    required TResult Function(_CategoriesLoaded value) categoriesLoaded,
    required TResult Function(_BicyclesLoaded value) bicyclesLoaded,
    required TResult Function(_BicycleLoaded value) bicycleLoaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loaing,
    TResult? Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(_BicyclesLoaded value)? bicyclesLoaded,
    TResult? Function(_BicycleLoaded value)? bicycleLoaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loaing,
    TResult Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult Function(_BicyclesLoaded value)? bicyclesLoaded,
    TResult Function(_BicycleLoaded value)? bicycleLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BicycleStateCopyWith<$Res> {
  factory $BicycleStateCopyWith(
          BicycleState value, $Res Function(BicycleState) then) =
      _$BicycleStateCopyWithImpl<$Res, BicycleState>;
}

/// @nodoc
class _$BicycleStateCopyWithImpl<$Res, $Val extends BicycleState>
    implements $BicycleStateCopyWith<$Res> {
  _$BicycleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$BicycleStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BicycleState.loaing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaing,
    required TResult Function(List<String> categories) categoriesLoaded,
    required TResult Function(List<Bicycle> bicycles) bicyclesLoaded,
    required TResult Function(Bicycle bicycle) bicycleLoaded,
    required TResult Function(String message) error,
  }) {
    return loaing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaing,
    TResult? Function(List<String> categories)? categoriesLoaded,
    TResult? Function(List<Bicycle> bicycles)? bicyclesLoaded,
    TResult? Function(Bicycle bicycle)? bicycleLoaded,
    TResult? Function(String message)? error,
  }) {
    return loaing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaing,
    TResult Function(List<String> categories)? categoriesLoaded,
    TResult Function(List<Bicycle> bicycles)? bicyclesLoaded,
    TResult Function(Bicycle bicycle)? bicycleLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaing != null) {
      return loaing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loaing,
    required TResult Function(_CategoriesLoaded value) categoriesLoaded,
    required TResult Function(_BicyclesLoaded value) bicyclesLoaded,
    required TResult Function(_BicycleLoaded value) bicycleLoaded,
    required TResult Function(_Error value) error,
  }) {
    return loaing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loaing,
    TResult? Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(_BicyclesLoaded value)? bicyclesLoaded,
    TResult? Function(_BicycleLoaded value)? bicycleLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loaing,
    TResult Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult Function(_BicyclesLoaded value)? bicyclesLoaded,
    TResult Function(_BicycleLoaded value)? bicycleLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaing != null) {
      return loaing(this);
    }
    return orElse();
  }
}

abstract class _Loading implements BicycleState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$CategoriesLoadedImplCopyWith<$Res> {
  factory _$$CategoriesLoadedImplCopyWith(_$CategoriesLoadedImpl value,
          $Res Function(_$CategoriesLoadedImpl) then) =
      __$$CategoriesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> categories});
}

/// @nodoc
class __$$CategoriesLoadedImplCopyWithImpl<$Res>
    extends _$BicycleStateCopyWithImpl<$Res, _$CategoriesLoadedImpl>
    implements _$$CategoriesLoadedImplCopyWith<$Res> {
  __$$CategoriesLoadedImplCopyWithImpl(_$CategoriesLoadedImpl _value,
      $Res Function(_$CategoriesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$CategoriesLoadedImpl(
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CategoriesLoadedImpl implements _CategoriesLoaded {
  const _$CategoriesLoadedImpl(final List<String> categories)
      : _categories = categories;

  final List<String> _categories;
  @override
  List<String> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'BicycleState.categoriesLoaded(categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesLoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesLoadedImplCopyWith<_$CategoriesLoadedImpl> get copyWith =>
      __$$CategoriesLoadedImplCopyWithImpl<_$CategoriesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaing,
    required TResult Function(List<String> categories) categoriesLoaded,
    required TResult Function(List<Bicycle> bicycles) bicyclesLoaded,
    required TResult Function(Bicycle bicycle) bicycleLoaded,
    required TResult Function(String message) error,
  }) {
    return categoriesLoaded(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaing,
    TResult? Function(List<String> categories)? categoriesLoaded,
    TResult? Function(List<Bicycle> bicycles)? bicyclesLoaded,
    TResult? Function(Bicycle bicycle)? bicycleLoaded,
    TResult? Function(String message)? error,
  }) {
    return categoriesLoaded?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaing,
    TResult Function(List<String> categories)? categoriesLoaded,
    TResult Function(List<Bicycle> bicycles)? bicyclesLoaded,
    TResult Function(Bicycle bicycle)? bicycleLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (categoriesLoaded != null) {
      return categoriesLoaded(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loaing,
    required TResult Function(_CategoriesLoaded value) categoriesLoaded,
    required TResult Function(_BicyclesLoaded value) bicyclesLoaded,
    required TResult Function(_BicycleLoaded value) bicycleLoaded,
    required TResult Function(_Error value) error,
  }) {
    return categoriesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loaing,
    TResult? Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(_BicyclesLoaded value)? bicyclesLoaded,
    TResult? Function(_BicycleLoaded value)? bicycleLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return categoriesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loaing,
    TResult Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult Function(_BicyclesLoaded value)? bicyclesLoaded,
    TResult Function(_BicycleLoaded value)? bicycleLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (categoriesLoaded != null) {
      return categoriesLoaded(this);
    }
    return orElse();
  }
}

abstract class _CategoriesLoaded implements BicycleState {
  const factory _CategoriesLoaded(final List<String> categories) =
      _$CategoriesLoadedImpl;

  List<String> get categories;
  @JsonKey(ignore: true)
  _$$CategoriesLoadedImplCopyWith<_$CategoriesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BicyclesLoadedImplCopyWith<$Res> {
  factory _$$BicyclesLoadedImplCopyWith(_$BicyclesLoadedImpl value,
          $Res Function(_$BicyclesLoadedImpl) then) =
      __$$BicyclesLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Bicycle> bicycles});
}

/// @nodoc
class __$$BicyclesLoadedImplCopyWithImpl<$Res>
    extends _$BicycleStateCopyWithImpl<$Res, _$BicyclesLoadedImpl>
    implements _$$BicyclesLoadedImplCopyWith<$Res> {
  __$$BicyclesLoadedImplCopyWithImpl(
      _$BicyclesLoadedImpl _value, $Res Function(_$BicyclesLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bicycles = null,
  }) {
    return _then(_$BicyclesLoadedImpl(
      null == bicycles
          ? _value._bicycles
          : bicycles // ignore: cast_nullable_to_non_nullable
              as List<Bicycle>,
    ));
  }
}

/// @nodoc

class _$BicyclesLoadedImpl implements _BicyclesLoaded {
  const _$BicyclesLoadedImpl(final List<Bicycle> bicycles)
      : _bicycles = bicycles;

  final List<Bicycle> _bicycles;
  @override
  List<Bicycle> get bicycles {
    if (_bicycles is EqualUnmodifiableListView) return _bicycles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bicycles);
  }

  @override
  String toString() {
    return 'BicycleState.bicyclesLoaded(bicycles: $bicycles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BicyclesLoadedImpl &&
            const DeepCollectionEquality().equals(other._bicycles, _bicycles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_bicycles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BicyclesLoadedImplCopyWith<_$BicyclesLoadedImpl> get copyWith =>
      __$$BicyclesLoadedImplCopyWithImpl<_$BicyclesLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaing,
    required TResult Function(List<String> categories) categoriesLoaded,
    required TResult Function(List<Bicycle> bicycles) bicyclesLoaded,
    required TResult Function(Bicycle bicycle) bicycleLoaded,
    required TResult Function(String message) error,
  }) {
    return bicyclesLoaded(bicycles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaing,
    TResult? Function(List<String> categories)? categoriesLoaded,
    TResult? Function(List<Bicycle> bicycles)? bicyclesLoaded,
    TResult? Function(Bicycle bicycle)? bicycleLoaded,
    TResult? Function(String message)? error,
  }) {
    return bicyclesLoaded?.call(bicycles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaing,
    TResult Function(List<String> categories)? categoriesLoaded,
    TResult Function(List<Bicycle> bicycles)? bicyclesLoaded,
    TResult Function(Bicycle bicycle)? bicycleLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (bicyclesLoaded != null) {
      return bicyclesLoaded(bicycles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loaing,
    required TResult Function(_CategoriesLoaded value) categoriesLoaded,
    required TResult Function(_BicyclesLoaded value) bicyclesLoaded,
    required TResult Function(_BicycleLoaded value) bicycleLoaded,
    required TResult Function(_Error value) error,
  }) {
    return bicyclesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loaing,
    TResult? Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(_BicyclesLoaded value)? bicyclesLoaded,
    TResult? Function(_BicycleLoaded value)? bicycleLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return bicyclesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loaing,
    TResult Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult Function(_BicyclesLoaded value)? bicyclesLoaded,
    TResult Function(_BicycleLoaded value)? bicycleLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (bicyclesLoaded != null) {
      return bicyclesLoaded(this);
    }
    return orElse();
  }
}

abstract class _BicyclesLoaded implements BicycleState {
  const factory _BicyclesLoaded(final List<Bicycle> bicycles) =
      _$BicyclesLoadedImpl;

  List<Bicycle> get bicycles;
  @JsonKey(ignore: true)
  _$$BicyclesLoadedImplCopyWith<_$BicyclesLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BicycleLoadedImplCopyWith<$Res> {
  factory _$$BicycleLoadedImplCopyWith(
          _$BicycleLoadedImpl value, $Res Function(_$BicycleLoadedImpl) then) =
      __$$BicycleLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Bicycle bicycle});
}

/// @nodoc
class __$$BicycleLoadedImplCopyWithImpl<$Res>
    extends _$BicycleStateCopyWithImpl<$Res, _$BicycleLoadedImpl>
    implements _$$BicycleLoadedImplCopyWith<$Res> {
  __$$BicycleLoadedImplCopyWithImpl(
      _$BicycleLoadedImpl _value, $Res Function(_$BicycleLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bicycle = null,
  }) {
    return _then(_$BicycleLoadedImpl(
      null == bicycle
          ? _value.bicycle
          : bicycle // ignore: cast_nullable_to_non_nullable
              as Bicycle,
    ));
  }
}

/// @nodoc

class _$BicycleLoadedImpl implements _BicycleLoaded {
  const _$BicycleLoadedImpl(this.bicycle);

  @override
  final Bicycle bicycle;

  @override
  String toString() {
    return 'BicycleState.bicycleLoaded(bicycle: $bicycle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BicycleLoadedImpl &&
            (identical(other.bicycle, bicycle) || other.bicycle == bicycle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, bicycle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BicycleLoadedImplCopyWith<_$BicycleLoadedImpl> get copyWith =>
      __$$BicycleLoadedImplCopyWithImpl<_$BicycleLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaing,
    required TResult Function(List<String> categories) categoriesLoaded,
    required TResult Function(List<Bicycle> bicycles) bicyclesLoaded,
    required TResult Function(Bicycle bicycle) bicycleLoaded,
    required TResult Function(String message) error,
  }) {
    return bicycleLoaded(bicycle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaing,
    TResult? Function(List<String> categories)? categoriesLoaded,
    TResult? Function(List<Bicycle> bicycles)? bicyclesLoaded,
    TResult? Function(Bicycle bicycle)? bicycleLoaded,
    TResult? Function(String message)? error,
  }) {
    return bicycleLoaded?.call(bicycle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaing,
    TResult Function(List<String> categories)? categoriesLoaded,
    TResult Function(List<Bicycle> bicycles)? bicyclesLoaded,
    TResult Function(Bicycle bicycle)? bicycleLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (bicycleLoaded != null) {
      return bicycleLoaded(bicycle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loaing,
    required TResult Function(_CategoriesLoaded value) categoriesLoaded,
    required TResult Function(_BicyclesLoaded value) bicyclesLoaded,
    required TResult Function(_BicycleLoaded value) bicycleLoaded,
    required TResult Function(_Error value) error,
  }) {
    return bicycleLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loaing,
    TResult? Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(_BicyclesLoaded value)? bicyclesLoaded,
    TResult? Function(_BicycleLoaded value)? bicycleLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return bicycleLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loaing,
    TResult Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult Function(_BicyclesLoaded value)? bicyclesLoaded,
    TResult Function(_BicycleLoaded value)? bicycleLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (bicycleLoaded != null) {
      return bicycleLoaded(this);
    }
    return orElse();
  }
}

abstract class _BicycleLoaded implements BicycleState {
  const factory _BicycleLoaded(final Bicycle bicycle) = _$BicycleLoadedImpl;

  Bicycle get bicycle;
  @JsonKey(ignore: true)
  _$$BicycleLoadedImplCopyWith<_$BicycleLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$BicycleStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'BicycleState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaing,
    required TResult Function(List<String> categories) categoriesLoaded,
    required TResult Function(List<Bicycle> bicycles) bicyclesLoaded,
    required TResult Function(Bicycle bicycle) bicycleLoaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loaing,
    TResult? Function(List<String> categories)? categoriesLoaded,
    TResult? Function(List<Bicycle> bicycles)? bicyclesLoaded,
    TResult? Function(Bicycle bicycle)? bicycleLoaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaing,
    TResult Function(List<String> categories)? categoriesLoaded,
    TResult Function(List<Bicycle> bicycles)? bicyclesLoaded,
    TResult Function(Bicycle bicycle)? bicycleLoaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loaing,
    required TResult Function(_CategoriesLoaded value) categoriesLoaded,
    required TResult Function(_BicyclesLoaded value) bicyclesLoaded,
    required TResult Function(_BicycleLoaded value) bicycleLoaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loaing,
    TResult? Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult? Function(_BicyclesLoaded value)? bicyclesLoaded,
    TResult? Function(_BicycleLoaded value)? bicycleLoaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loaing,
    TResult Function(_CategoriesLoaded value)? categoriesLoaded,
    TResult Function(_BicyclesLoaded value)? bicyclesLoaded,
    TResult Function(_BicycleLoaded value)? bicycleLoaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements BicycleState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
