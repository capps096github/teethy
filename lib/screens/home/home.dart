import '../../teethy_exporter.dart';
import 'navbar/navbar.dart';
import 'pages/pages_data.dart';
import 'providers.dart';

class TeethyHome extends StatelessWidget {
  const TeethyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Teethy"),
      ),
      body: const HomePages(),
      bottomNavigationBar: const HomeNavbar(),
    );
  }
}

class HomePages extends ConsumerWidget {
  const HomePages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final navBarIndex = ref.watch(navbarIndexProvider);

    return PageTransitionSwitcher(
      transitionBuilder: (child, animation, secondaryAnimation) {
        return FadeThroughTransition(
          animation: animation,
          secondaryAnimation: secondaryAnimation,
          fillColor: teethyTransparent,
          child: child,
        );
      },
      duration: halfSeconds,
      child: homePages[navBarIndex].screen,
    );
  }
}
