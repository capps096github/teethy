import '../../teethy_exporter.dart';
import 'navbar/navbar.dart';
import 'pages/pages_data.dart';
import 'providers.dart';

class TeethyHome extends ConsumerWidget {
  const TeethyHome({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final navBarIndex = ref.watch(navbarIndexProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Teethy ${homePages[navBarIndex].label}")),
      body: HomePages(navBarIndex: navBarIndex),
      bottomNavigationBar: const HomeNavbar(),
    );
  }
}

class HomePages extends ConsumerWidget {
  const HomePages({
    Key? key,
    required this.navBarIndex,
  }) : super(key: key);
// int
  final int navBarIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
