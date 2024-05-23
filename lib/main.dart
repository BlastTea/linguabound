import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:linguabound/utils/utils.dart';
import 'package:linguabound/views/pages/pages.dart';
import 'package:m_widget/m_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await MWidget.initialize(
    defaultLanguage: LanguageType.indonesiaIndonesian,
    defaultTheme: ThemeValue(
      themeMode: ThemeMode.dark,
      color: kColorSurface,
      withCustomColors: true,
      useDynamicColors: true,
    ),
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => MWidgetDynamicColorBuilder(
        builder: (context, theme, darkTheme, themeMode, colorScheme) {
          timeDilation = 1.0;

          ColorScheme effectiveColorScheme = colorScheme!.copyWith(
            primary: kColorPrimary,
            surface: kColorSurface,
          );

          TextTheme effectiveTextTheme = TextTheme(
            bodyLarge: kTextStyleBodyLarge.copyWith(fontFamily: kFontFamily),
            bodyMedium: kTextStyleBodyMedium.copyWith(fontFamily: kFontFamily),
            bodySmall: kTextStyleBodySmall.copyWith(fontFamily: kFontFamily),
            displayLarge: kTextStyleDisplayLarge.copyWith(fontFamily: kFontFamily),
            displayMedium: kTextStyleDisplayMedium.copyWith(fontFamily: kFontFamily),
            displaySmall: kTextStyleDisplaySmall.copyWith(fontFamily: kFontFamily),
            headlineLarge: kTextStyleHeadlineLarge.copyWith(fontFamily: kFontFamily),
            headlineMedium: kTextStyleHeadlineMedium.copyWith(fontFamily: kFontFamily),
            headlineSmall: kTextStyleHeadlineSmall.copyWith(fontFamily: kFontFamily),
            labelLarge: kTextStyleLabelLarge.copyWith(fontFamily: kFontFamily),
            labelMedium: kTextStyleLabelMedium.copyWith(fontFamily: kFontFamily),
            labelSmall: kTextStyleLabelSmall.copyWith(fontFamily: kFontFamily),
            titleLarge: kTextStyleTitleLarge.copyWith(fontFamily: kFontFamily),
            titleMedium: kTextStyleTitleMedium.copyWith(fontFamily: kFontFamily),
            titleSmall: kTextStyleTitleSmall.copyWith(fontFamily: kFontFamily),
          );

          FilledButtonThemeData effectiveFilledButtonTheme = FilledButtonThemeData(
            style: ButtonStyle(
              elevation: WidgetStateProperty.resolveWith((states) => states.contains(WidgetState.pressed) ? 0.0 : 8.0),
              textStyle: WidgetStatePropertyAll(effectiveTextTheme.headlineSmall),
              foregroundColor: const WidgetStatePropertyAll(kColorWhite),
              padding: const WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0)),
              shape: const WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(14.0),
                  ),
                ),
              ),
            ),
          );

          return MaterialApp(
            theme: theme.copyWith(
              colorScheme: effectiveColorScheme,
              scaffoldBackgroundColor: effectiveColorScheme.surface,
              textTheme: effectiveTextTheme,
              filledButtonTheme: effectiveFilledButtonTheme,
            ),
            darkTheme: darkTheme.copyWith(
              colorScheme: effectiveColorScheme,
              scaffoldBackgroundColor: effectiveColorScheme.surface,
              textTheme: effectiveTextTheme,
              filledButtonTheme: effectiveFilledButtonTheme,
            ),
            themeMode: themeMode,
            debugShowCheckedModeBanner: false,
            navigatorKey: navigatorKey,
            scaffoldMessengerKey: scaffoldMessengerKey,
            home: const OnBoardingPage1(),
          );
        },
      );
}
