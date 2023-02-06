import '../../../teethy_exporter.dart';

class HomePage {
  // sselected icon
  final IconData selectedIcon;

  // unselected icon
  final IconData unselectedIcon;

  // label
  final String label;

  // widget
  final Widget screen;

  HomePage({
    required this.selectedIcon,
    required this.unselectedIcon,
    required this.label,
    required this.screen,
  });
}
