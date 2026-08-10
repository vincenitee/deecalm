import 'package:deecalm/features/auth/data/exceptions/auth_exceptions.dart';
import 'package:google_sign_in/google_sign_in.dart';

AppException mapGoogleAuthError(Exception error) {
  if (error is AppException) return error;

  if (error is GoogleSignInException) {
    return switch (error.code) {
      GoogleSignInExceptionCode.canceled =>
        const GoogleAuthCancelledException(),
      GoogleSignInExceptionCode.clientConfigurationError ||
      GoogleSignInExceptionCode.providerConfigurationError =>
        const ServerConfigException(),
      _ => GoogleAuthException(error.description ?? 'Google sign-in failed'),
    };
  }

  return UnknownException(error.toString());
}
