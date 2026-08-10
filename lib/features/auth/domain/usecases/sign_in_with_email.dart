import 'package:dart_either/dart_either.dart';
import 'package:deecalm/core/usecase/usecase.dart';
import 'package:deecalm/features/auth/domain/entities/auth_user.dart';
import 'package:deecalm/features/auth/domain/failures/auth_failure.dart';
import 'package:deecalm/features/auth/domain/repositories/auth_repository.dart';

class SignInWithEmailParams {
  const SignInWithEmailParams({required this.email, required this.password});

  final String email;
  final String password;
}

class SignInWithEmailUseCase
    implements UseCase<Either<Failure, AuthUserEntity>, SignInWithEmailParams> {
  SignInWithEmailUseCase(this._repository);

  final AuthRepository _repository;

  @override
  Future<Either<Failure, AuthUserEntity>> call({
    required SignInWithEmailParams params,
  }) {
    return _repository.signInWithEmail(
      email: params.email,
      password: params.password,
    );
  }
}
