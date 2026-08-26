abstract class AppException implements Exception {
  const AppException(this.message);
  final String message;

  @override
  String toString() => '$runtimeType: $message';
}

class NetworkException extends AppException {
  const NetworkException([super.message = 'No internet connection']);
}

class ServerException extends AppException {
  const ServerException([super.message = 'Server error occured']);
}

class InvalidCredentialsException extends AppException {
  const InvalidCredentialsException([super.message = 'Invalid Credentials']);
}

class GoogleAuthCancelledException extends AppException {
  const GoogleAuthCancelledException([
    super.message = 'Google auth cancelled by user',
  ]);
}

class GoogleAuthException extends AppException {
  const GoogleAuthException([
    super.message = 'Google sign-in failed',
  ]);
}

class ServerConfigException extends AppException {
  const ServerConfigException([
    super.message = 'Missing or invalid configuration keys',
  ]);
}

class UnknownException extends AppException {
  const UnknownException([
    super.message = 'Unknown exception occured',
  ]);
}

class EmailNotConfirmedException extends AppException {
  const EmailNotConfirmedException([
    super.message = 'Email is not yet confirmed',
  ]);
}

class SessionMissingException extends AppException {
  const SessionMissingException([
    super.message = 'No session found',
  ]);
}
