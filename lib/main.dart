import 'package:flutter/material.dart';
import 'package:m_widget/m_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await MWidget.initialize(
    defaultLanguage: LanguageType.indonesiaIndonesian,
    defaultTheme: ThemeValue(
      themeMode: ThemeMode.dark,
      color: const Color(0xFF6A2C70),
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
          ColorScheme? effectiveColorScheme = colorScheme?.copyWith(surface: colorScheme.primary);

          return MaterialApp(
            theme: theme.copyWith(colorScheme: effectiveColorScheme),
            darkTheme: darkTheme.copyWith(colorScheme: effectiveColorScheme),
            themeMode: themeMode,
            home: Scaffold(
              body: Center(
                child: Text('Hello World!'),
              ),
            ),
          );
        },
      );
}
