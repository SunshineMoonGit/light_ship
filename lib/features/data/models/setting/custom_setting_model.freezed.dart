// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CustomSettingModel _$CustomSettingModelFromJson(Map<String, dynamic> json) {
  return _CustomSettingModel.fromJson(json);
}

/// @nodoc
mixin _$CustomSettingModel {
  ThemeType get theme => throw _privateConstructorUsedError;
  LanguageType get language => throw _privateConstructorUsedError;
  bool get notificationsEnabled => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomSettingModelCopyWith<CustomSettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomSettingModelCopyWith<$Res> {
  factory $CustomSettingModelCopyWith(
          CustomSettingModel value, $Res Function(CustomSettingModel) then) =
      _$CustomSettingModelCopyWithImpl<$Res, CustomSettingModel>;
  @useResult
  $Res call(
      {ThemeType theme, LanguageType language, bool notificationsEnabled});
}

/// @nodoc
class _$CustomSettingModelCopyWithImpl<$Res, $Val extends CustomSettingModel>
    implements $CustomSettingModelCopyWith<$Res> {
  _$CustomSettingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? language = null,
    Object? notificationsEnabled = null,
  }) {
    return _then(_value.copyWith(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeType,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageType,
      notificationsEnabled: null == notificationsEnabled
          ? _value.notificationsEnabled
          : notificationsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomSettingModelImplCopyWith<$Res>
    implements $CustomSettingModelCopyWith<$Res> {
  factory _$$CustomSettingModelImplCopyWith(_$CustomSettingModelImpl value,
          $Res Function(_$CustomSettingModelImpl) then) =
      __$$CustomSettingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeType theme, LanguageType language, bool notificationsEnabled});
}

/// @nodoc
class __$$CustomSettingModelImplCopyWithImpl<$Res>
    extends _$CustomSettingModelCopyWithImpl<$Res, _$CustomSettingModelImpl>
    implements _$$CustomSettingModelImplCopyWith<$Res> {
  __$$CustomSettingModelImplCopyWithImpl(_$CustomSettingModelImpl _value,
      $Res Function(_$CustomSettingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theme = null,
    Object? language = null,
    Object? notificationsEnabled = null,
  }) {
    return _then(_$CustomSettingModelImpl(
      theme: null == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as ThemeType,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageType,
      notificationsEnabled: null == notificationsEnabled
          ? _value.notificationsEnabled
          : notificationsEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomSettingModelImpl implements _CustomSettingModel {
  const _$CustomSettingModelImpl(
      {this.theme = ThemeType.light,
      this.language = LanguageType.none,
      this.notificationsEnabled = true});

  factory _$CustomSettingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomSettingModelImplFromJson(json);

  @override
  @JsonKey()
  final ThemeType theme;
  @override
  @JsonKey()
  final LanguageType language;
  @override
  @JsonKey()
  final bool notificationsEnabled;

  @override
  String toString() {
    return 'CustomSettingModel(theme: $theme, language: $language, notificationsEnabled: $notificationsEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomSettingModelImpl &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.notificationsEnabled, notificationsEnabled) ||
                other.notificationsEnabled == notificationsEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, theme, language, notificationsEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomSettingModelImplCopyWith<_$CustomSettingModelImpl> get copyWith =>
      __$$CustomSettingModelImplCopyWithImpl<_$CustomSettingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomSettingModelImplToJson(
      this,
    );
  }
}

abstract class _CustomSettingModel implements CustomSettingModel {
  const factory _CustomSettingModel(
      {final ThemeType theme,
      final LanguageType language,
      final bool notificationsEnabled}) = _$CustomSettingModelImpl;

  factory _CustomSettingModel.fromJson(Map<String, dynamic> json) =
      _$CustomSettingModelImpl.fromJson;

  @override
  ThemeType get theme;
  @override
  LanguageType get language;
  @override
  bool get notificationsEnabled;
  @override
  @JsonKey(ignore: true)
  _$$CustomSettingModelImplCopyWith<_$CustomSettingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
