import '../../teethy_exporter.dart';

const textStyleFunction = GoogleFonts.lato;
final textTheme = ThemeData.light().textTheme;

//? -- Theme Data --
final themeProvider = Provider<ThemeData>(
  (ref) {
    return ThemeData(
      // useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: teethyColor,
      scaffoldBackgroundColor: teethyBackground,
      //* -- Visual Density
      visualDensity: VisualDensity.adaptivePlatformDensity,
      //* -- Appbar
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: teethyColor,
        titleTextStyle: GoogleFonts.lato(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: teethyWhite,
        ),
      ),
      //* -- tooltip
      tooltipTheme: TooltipThemeData(
        textStyle: const TextStyle(color: teethyColor),
        decoration: BoxDecoration(
          color: teethySerenity,
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      //* -- text button
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            const EdgeInsets.all(14),
          ),
        ),
      ),
      //* Text Theme
      textTheme: TextTheme(
        displayLarge: textStyleFunction(textStyle: textTheme.displayLarge),
        displayMedium: textStyleFunction(textStyle: textTheme.displayMedium),
        displaySmall: textStyleFunction(textStyle: textTheme.displaySmall),
        headlineLarge: textStyleFunction(textStyle: textTheme.headlineLarge),
        headlineMedium: textStyleFunction(textStyle: textTheme.headlineMedium),
        headlineSmall: textStyleFunction(textStyle: textTheme.headlineSmall),
        titleLarge: textStyleFunction(textStyle: textTheme.titleLarge),
        titleMedium: textStyleFunction(textStyle: textTheme.titleMedium),
        titleSmall: textStyleFunction(textStyle: textTheme.titleSmall),
        bodyLarge: textStyleFunction(textStyle: textTheme.bodyLarge),
        bodyMedium: textStyleFunction(textStyle: textTheme.bodyMedium),
        bodySmall: textStyleFunction(textStyle: textTheme.bodySmall),
        labelLarge: textStyleFunction(textStyle: textTheme.labelLarge),
        labelMedium: textStyleFunction(textStyle: textTheme.labelMedium),
        labelSmall: textStyleFunction(textStyle: textTheme.labelSmall),
      ),
    );
  },
);
