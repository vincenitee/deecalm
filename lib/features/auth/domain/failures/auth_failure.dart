sealed class Failure {
  const Failure(this.message);
  final String message;
}

class AuthFailure extends Failure {
  const AuthFailure(super.message);
}

class GoogleAuthCancelledFailure extends Failure {
  const GoogleAuthCancelledFailure(super.message);
}

class GoogleAuthFailure extends Failure {
  const GoogleAuthFailure(super.message);
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);
}

class ServerConfigFailure extends Failure {
  const ServerConfigFailure(super.message);
}

class NetworkFailure extends Failure {
  const NetworkFailure(super.message);
}

class UnknownFailure extends Failure {
  const UnknownFailure(super.message);
}
