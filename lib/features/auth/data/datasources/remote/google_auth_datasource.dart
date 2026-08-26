import 'package:deecalm/features/auth/data/datasources/remote/google_error_mapper.dart';
import 'package:deecalm/features/auth/data/exceptions/auth_exceptions.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';

class GoogleAuthDatasource {
  GoogleAuthDatasource(this._googleSignIn);

  final GoogleSignIn _googleSignIn;

  Future<void>? _initialization;

  // Ensure Google Sign In plug in is initialized
  Future<void> _ensureInitialized() async {
    final existing = _initialization;
    if(existing != null) return existing;

    final future = _initialize();
    _initialization = future;

    try {
      await future;
    } on Exception {
      _initialization = null;
      rethrow;
    }
  }

  Future<void> _initialize() async {
    const webClientId = String.fromEnvironment('GOOGLE_WEB_CLIENT_ID');

    if (webClientId.isEmpty) {
      throw const ServerConfigException();
    }

    await _googleSignIn.initialize(serverClientId: webClientId);
  }

  // Attempt to sign in and retrieve the id token
  Future<String> signInAndGetIdToken() async {
    try {
      await _ensureInitialized();

      final account = await _googleSignIn.authenticate();
      final idToken = account.authentication.idToken;
      if (idToken == null) {
        throw const GoogleAuthException('No id token returned');
      }
      return idToken;
    } on Exception catch (e) {
      Logger().e(e.toString());
      throw mapGoogleAuthError(e);
    }
  }
}
