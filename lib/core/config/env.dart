class EnvConfigException implements Exception {
  const EnvConfigException(this.key);

  final String key;

  @override
  String toString() =>
      'EnvConfigException: missing --dart-define for "$key". '
      'Launch with --dart-define-from=config/dev.json';
}

abstract final class Env {
  static const supabaseUrl = String.fromEnvironment('SUPABASE_URL');
  static const supabasePublishableKey = String.fromEnvironment(
    'SUPABASE_PUBLISHABLE_KEY',
  );
  static const googleWebClientId = String.fromEnvironment(
    'GOOGLE_WEB_CLIENT_ID',
  );

  static void validate() {
    const required = {
      'SUPABASE_URL': supabaseUrl,
      'SUPABASE_PUBLISHABLE_KEY': supabasePublishableKey,
      'GOOGLE_WEB_CLIENT_ID': googleWebClientId,
    };
    for (final entry in required.entries) {
      if (entry.value.isEmpty) throw EnvConfigException(entry.key);
    }
  }
}
