import '../../../teethy_exporter.dart';
import '../pages/pages_data.dart';
import '../providers.dart';

class HomeNavbar extends ConsumerWidget {
  const HomeNavbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
//
    final currentIndex = ref.watch(navbarIndexProvider);

    //
    return BottomNavigationBar(
      backgroundColor: teethyColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: teethyWhite,
      unselectedItemColor: teethyWhite.withOpacity(0.4),
      onTap: (value) {
        // update the navbar index
        ref.read(navbarIndexProvider.notifier).state = value;
      },
      currentIndex: currentIndex,
      items: List.generate(
        homePages.length,
        (index) {
          // home page
          final homePage = homePages[index];

          // is selected
          final isSelected = currentIndex == index;

          return BottomNavigationBarItem(
            icon: Icon(
              isSelected ? homePage.selectedIcon : homePage.unselectedIcon,
            ),
            label: homePage.label,
          );
        },
      ),
    );
  }
}
