import 'package:flutter/cupertino.dart';

import '../../../teethy_exporter.dart';
import 'home_page.dart';

final List<HomePage> homePages = [
  HomePage(
    selectedIcon: Icons.home,
    unselectedIcon: Icons.home_outlined,
    label: "Home",
    screen: const Placeholder(),
  ),
  HomePage(
    selectedIcon: CupertinoIcons.cart_fill,
    unselectedIcon: CupertinoIcons.cart,
    label: "Shop",
    screen: const TeethyShop(),
  ),
  HomePage(
    selectedIcon: CupertinoIcons.doc_on_clipboard_fill,
    unselectedIcon: CupertinoIcons.doc_on_clipboard,
    label: "Tips",
    screen: const Placeholder(),
  ),
];
