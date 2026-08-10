import 'package:deecalm/core/util/json_parser.dart';
import 'package:deecalm/features/auth/domain/entities/auth_user.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthUserModel extends AuthUserEntity {
  const AuthUserModel({
    required super.id,
    super.email,
    super.displayName,
    super.avatarUrl,
  });

  // Map -> Model
  factory AuthUserModel.fromSupabaseUser(User user) {
    final metadata = user.userMetadata;
    return AuthUserModel(
      id: user.id,
      email: parseNullableString(user.email),
      displayName: parseNullableString(metadata?['full_name']),
      avatarUrl: parseNullableString(metadata?['avatar_url']),
    );
  }

  // Entity -> Model
  factory AuthUserModel.fromEntity(AuthUserEntity entity) {
    return AuthUserModel(
      id: entity.id,
      email: entity.email,
      displayName: entity.displayName,
      avatarUrl: entity.avatarUrl,
    );
  }

  // Model -> Entity
  AuthUserEntity toEntity() {
    return AuthUserEntity(
      id: id,
      email: email,
      displayName: displayName,
      avatarUrl: avatarUrl,
    );
  }
}
