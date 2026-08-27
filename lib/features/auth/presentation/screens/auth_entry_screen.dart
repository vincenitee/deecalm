import 'dart:async';

import 'package:deecalm/core/theme/app_dimens_theme_extension.dart';
import 'package:deecalm/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class AuthEntryScreen extends StatelessWidget {
  const AuthEntryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {
                  unawaited(
                    showModalBottomSheet<void>(
                      showDragHandle: true,
                      context: context,
                      backgroundColor: colorScheme.onPrimary,
                      builder: (context) {
                        return Container(
                          decoration: BoxDecoration(
                            color: colorScheme.onPrimary,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          padding: EdgeInsets.fromLTRB(
                            16,
                            8,
                            16,
                            24 + MediaQuery.of(context).padding.bottom,
                          ),
                          width: double.infinity,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Let's Get Set You Up",
                                  style: appTextTheme.headlineMedium,
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  'Track your health, gently —'
                                  ' one day at a time.',
                                  style: appTextTheme.labelMedium?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                                ),

                                SizedBox(
                                  height:
                                      theme
                                          .extension<AppDimensThemeExtension>()!
                                          .stackLg,
                                ),

                                SizedBox(
                                  width: double.infinity,
                                  child: FilledButton.icon(
                                    style: FilledButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 16,
                                      ),
                                    ),
                                    onPressed: () {},
                                    label: const Text('Continue with email'),
                                    icon: const Icon(LucideIcons.mail),
                                  ),
                                ),

                                const SizedBox(
                                  height: 8,
                                ),

                                SizedBox(
                                  width: double.infinity,
                                  child: OutlinedButton.icon(
                                    style: OutlinedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 16,
                                      ),
                                    ),
                                    icon: SvgPicture.asset(
                                      'assets/icons/google_logo.svg',
                                      width: 20,
                                      height: 20,
                                    ),
                                    onPressed: () {},
                                    label: const Text('Continue with google'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    color: theme.colorScheme.onSecondary,
                  ),
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: theme.colorScheme.onSecondary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
