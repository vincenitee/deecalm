import 'package:deecalm/features/auth/data/exceptions/auth_exceptions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

AppException mapSupabaseAuthError(Exception error) {
  if (error is AppException) return error;
  
  if (error is AuthApiException) {
    return switch (error.code) {
      'invalid_credentials' => const InvalidCredentialsException(),
      'email_not_confirmed' => const EmailNotConfirmedException(),
      _ => ServerException(error.message),
    };
  }

  if (error is AuthRetryableFetchException) {
    return error.statusCode == null
        ? const NetworkException()
        : ServerException(error.message);
  }

  if (error is AuthSessionMissingException) {
    return const SessionMissingException();
  }

  if (error is AuthException) return ServerException(error.message);

  return UnknownException(error.toString());
}
