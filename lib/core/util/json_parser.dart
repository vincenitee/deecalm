/// Safely parses loosely typed JSON values into strongly typed Dart values.
int? parseNullableInt(dynamic value) {
  if (value == null) {
    return null;
  }

  if (value is int) {
    return value;
  }

  if (value is num) {
    return value.toInt();
  }

  if (value is String) {
    return int.tryParse(value.trim());
  }

  return null;
}

/// Safely converts a JSON value into a nullable string.
String? parseNullableString(dynamic value) {
  if (value == null) {
    return null;
  }

  if (value is String) {
    final trimmed = value.trim();
    return trimmed.isEmpty ? null : trimmed;
  }

  return value.toString();
}

/// Safely parses a JSON value into a nullable [DateTime].
DateTime? parseNullableDateTime(dynamic value) {
  final text = parseNullableString(value);
  if (text == null) {
    return null;
  }

  return DateTime.tryParse(text);
}

/// Safely parses a JSON value into a nullable boolean.
bool? parseNullableBool(dynamic value) {
  if (value == null) {
    return null;
  }

  if (value is bool) {
    return value;
  }

  if (value is String) {
    final lower = value.trim().toLowerCase();
    if (lower == 'true') {
      return true;
    } else if (lower == 'false') {
      return false;
    }
  }

  return null;
}

/// Safely parses a JSON value into a map.
Map<String, dynamic>? asStringMap(dynamic value) {
  if (value is Map) {
    return Map<String, dynamic>.from(value);
  }

  return null;
}
