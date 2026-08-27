import 'package:deecalm/core/theme/app_color_scheme.dart';
import 'package:deecalm/core/theme/app_colors.dart';
import 'package:deecalm/core/theme/app_dimens_theme_extension.dart';
import 'package:deecalm/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

abstract final class AppTheme {
  static ThemeData get light {
    const dimens = AppDimensThemeExtension.light;

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: appLightColorScheme,
      scaffoldBackgroundColor: AppColors.surface,
      textTheme: appTextTheme,
      fontFamily: appTextTheme.bodyMedium?.fontFamily,
      extensions: const [dimens],
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(dimens.radiusLg),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: BorderSide(color: AppColors.secondary.withValues(alpha: 0.2)),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(dimens.radiusLg),
          ),
        ),
      ),
      cardTheme: CardThemeData(
        color: AppColors.surfaceContainerLowest,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(dimens.radiusXl),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surfaceContainerLow,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(dimens.radiusLg),
          borderSide: BorderSide.none,
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.secondaryContainer,
        labelStyle: appTextTheme.labelMedium,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(dimens.radiusFull),
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: AppColors.primary,
        linearTrackColor: AppColors.secondary.withValues(alpha: 0.15),
      ),
    );
  }
}
