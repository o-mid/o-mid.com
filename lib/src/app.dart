import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:omid_site/src/constants/themes.dart' as themes;
import 'package:omid_site/src/features/general/presentation/general_section.dart';
import 'package:omid_site/src/features/general/provider/dark_mode_controller.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:omid_site/src/localization/generated/locale_keys.g.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (_) => tr(LocaleKeys.name),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: themes.lightTheme,
      darkTheme: themes.darkTheme,
      themeMode: ref.watch(darkModeProvider).maybeWhen(
            data: (darkMode) => darkMode ? ThemeMode.dark : ThemeMode.light,
            orElse: () => ThemeMode.system,
          ),
      home: const GeneralSection(),
    );
  }
}
