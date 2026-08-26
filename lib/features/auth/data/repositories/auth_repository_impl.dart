import 'package:dart_either/dart_either.dart';
import 'package:deecalm/features/auth/data/datasources/remote/auth_datasource.dart';
import 'package:deecalm/features/auth/data/datasources/remote/google_auth_datasource.dart';
import 'package:deecalm/features/auth/data/exceptions/auth_exceptions.dart';
import 'package:deecalm/features/auth/domain/entities/auth_user.dart';
import 'package:deecalm/features/auth/domain/failures/auth_failure.dart';
import 'package:deecalm/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(
    this.authDatasource,
    this.googleDatasource,
  );

  final AuthDatasource authDatasource;
  final GoogleAuthDatasource googleDatasource;

  @override
  Future<Either<Failure, AuthUserEntity>> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final model = await authDatasource.signInWithEmail(
        email: email,
        password: password,
      );

      return Right(model.toEntity());
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on InvalidCredentialsException catch (e) {
      return Left(AuthFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on AppException catch (e) {
      return Left(UnknownFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, AuthUserEntity>> signInWithGoogle() async {
    try {
      final idToken = await googleDatasource.signInAndGetIdToken();

      final user = await authDatasource.signInWithIdToken(idToken);

      return Right(user.toEntity());
    } on ServerConfigException catch (e) {
      return Left(ServerConfigFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on GoogleAuthCancelledException catch (e) {
      return Left(GoogleAuthCancelledFailure(e.message));
    } on GoogleAuthException catch (e) {
      return Left(GoogleAuthFailure(e.message));
    } on AppException catch (e) {
      return Left(UnknownFailure(e.message));
    }
  }

  @override
  AuthUserEntity? get currentUser => authDatasource.currentUser?.toEntity();

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      await authDatasource.signOut();

      return const Right<Failure, void>(null);
    } on NetworkException catch (e) {
      return Left(NetworkFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on AppException catch (e) {
      return Left(UnknownFailure(e.message));
    }
  }
}
