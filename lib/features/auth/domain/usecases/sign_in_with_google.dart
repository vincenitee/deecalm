import 'package:dart_either/dart_either.dart';
import 'package:deecalm/core/usecase/usecase.dart';
import 'package:deecalm/features/auth/domain/entities/auth_user.dart';
import 'package:deecalm/features/auth/domain/failures/auth_failure.dart';
import 'package:deecalm/features/auth/domain/repositories/auth_repository.dart';

class SignInWithGoogleUseCase
    implements UseCase<Either<Failure, AuthUserEntity>, NoParams> {
  SignInWithGoogleUseCase(this._repository);
  final AuthRepository _repository;

  @override
  Future<Either<Failure, AuthUserEntity>> call({required NoParams params}) {
    return _repository.signInWithGoogle();
  }
}
