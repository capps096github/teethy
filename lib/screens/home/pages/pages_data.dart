import 'package:flutter/cupertino.dart';

import '../../../teethy_exporter.dart';
import 'home_page.dart';

final List<HomePage> homePages = [
  HomePage(
    selectedIcon: CupertinoIcons.chat_bubble_2_fill,
    unselectedIcon: CupertinoIcons.chat_bubble_2,
    label: "Consultations",
    screen: const TeethyConsultancy(),
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
    screen: const TeethyTips(),
  ),
];
