import '../teethy_exporter.dart';

class Teethy extends ConsumerWidget {
  const Teethy({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    // final themeMode = ref.watch(themeModeProvider);
    // final goRouter = ref.watch(routerProvider);

    // return MaterialApp.router(
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      home: Scaffold(
        backgroundColor: teethyColor,
      ),
=======
      color: teethyColor,
      title: "Teethy App",
      restorationScopeId: teethyId,

      // *theme
      // themeMode: themeMode,
      theme: theme,
      // Enable this later on in the Future when we add dark mode support
      // darkTheme: theme.darkTheme,

      // *router
      // routerDelegate: goRouter.routerDelegate,
      // routeInformationParser: goRouter.routeInformationParser,
      // routeInformationProvider: goRouter.routeInformationProvider,
      //* -- Scroll Behavior --
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        physics: const BouncingScrollPhysics(),
        scrollbars: false,
      ),
      home: const TeethyHome(),
>>>>>>> 49a8e6ad6d30a64cdcbd063e861f24febe7f3047
    );
  }
}
