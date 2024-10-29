import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum()
enum LanguageType {
  @JsonValue('none')
  none,
  @JsonValue('en')
  en,
  @JsonValue('ko')
  ko,
  @JsonValue('jp')
  jp,
}

@JsonEnum()
enum ThemeType {
  @JsonValue('light')
  light,
  @JsonValue('dark')
  dark,
}
