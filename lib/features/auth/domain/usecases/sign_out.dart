import 'package:dart_either/dart_either.dart';
import 'package:deecalm/core/usecase/usecase.dart';
import 'package:deecalm/features/auth/domain/failures/auth_failure.dart';
import 'package:deecalm/features/auth/domain/repositories/auth_repository.dart';

class SignOutUseCase implements UseCase<Either<Failure, void>, NoParams> {
  SignOutUseCase(this._repository);

  final AuthRepository _repository;
  @override
  Future<Either<Failure, void>> call({required NoParams params}) {
    return _repository.signOut();
  }
}
