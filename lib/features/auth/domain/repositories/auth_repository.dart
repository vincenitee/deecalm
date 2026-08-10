import 'package:dart_either/dart_either.dart';
import 'package:deecalm/features/auth/domain/entities/auth_user.dart';
import 'package:deecalm/features/auth/domain/failures/auth_failure.dart';

abstract class AuthRepository {
  // Sign in with Google OAuth
  Future<Either<Failure, AuthUserEntity>> signInWithGoogle();

  // Sign in with Email + Password
  Future<Either<Failure, AuthUserEntity>> signInWithEmail({
    required String email,
    required String password,
  });

  // Fetch the current authenticated user
  AuthUserEntity? get currentUser;

  // Signout User
  Future<Either<Failure, void>> signOut();
}
