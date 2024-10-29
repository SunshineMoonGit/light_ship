// 인증 관련 enum
import 'package:freezed_annotation/freezed_annotation.dart';

enum AuthState { initial, loading, authenticated, authenticatedButIncomplete, unauthenticated, error }

enum LoginType {
  @JsonValue('none')
  none,
  @JsonValue('google')
  google,
  @JsonValue('apple')
  apple,
}

enum UserType {
  @JsonValue('normal')
  normal,
  @JsonValue('premium')
  premium,
  @JsonValue('master')
  master,
}
