import 'package:deecalm/features/auth/data/datasources/remote/google_error_mapper.dart';
import 'package:deecalm/features/auth/data/exceptions/auth_exceptions.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';

class GoogleAuthDatasource {
  GoogleAuthDatasource(this._googleSignIn);

  final GoogleSignIn _googleSignIn;

  bool _initialized = false;

  // Ensure Google Sign In plug in is initialized
  Future<void> _ensureInitialized() async {
    if (_initialized) return;

    // Check if the web client id is attached to the build command
    const isWebClientIdDefined = bool.hasEnvironment('GOOGLE_WEB_CLIENT_ID');
    const webClientId = String.fromEnvironment('GOOGLE_WEB_CLIENT_ID');

    if (!isWebClientIdDefined || webClientId.isEmpty) {
      throw const ServerConfigException();
    }

    // Initializes Google Sign In instance
    await _googleSignIn.initialize(serverClientId: webClientId);

    _initialized = true;
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
