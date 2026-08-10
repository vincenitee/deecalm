import 'dart:async';

import 'package:deecalm/features/auth/data/datasources/remote/supabase_error_mapper.dart';
import 'package:deecalm/features/auth/data/exceptions/auth_exceptions.dart';
import 'package:deecalm/features/auth/data/models/auth_user.dart';
import 'package:logger/logger.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthDatasource {
  AuthDatasource(this._supabase);

  final SupabaseClient _supabase;

  Future<AuthUserModel> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );

      if (response.user == null) throw const InvalidCredentialsException();

      return AuthUserModel.fromSupabaseUser(response.user!);
    } on Exception catch (e) {
      Logger().e(e.toString());
      throw mapSupabaseAuthError(e);
    }
  }

  Future<AuthUserModel> signInWithIdToken(String idToken) async {
    try {
      final response = await _supabase.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: idToken,
      );

      if (response.user == null) throw const ServerException('Sign-in failed');

      return AuthUserModel.fromSupabaseUser(response.user!);
    } on Exception catch (e) {
      Logger().e(e.toString());
      throw mapSupabaseAuthError(e);
    }
  }

  AuthUserModel? get currentUser {
    final user = _supabase.auth.currentUser;
    if (user == null) return null;

    return AuthUserModel.fromSupabaseUser(user);
  }

  Future<void> signOut() async {
    try {
      await _supabase.auth.signOut();
    } on Exception catch (e) {
      Logger().e(e.toString());
      throw mapSupabaseAuthError(e);
    }
  }
}
